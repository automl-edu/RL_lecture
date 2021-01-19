import re
import sys
from pathlib import Path
import subprocess

try:
    subprocess.run("pdftk", capture_output=True)
    PDFTK_INSTALLED = True
except FileNotFoundError:
    PDFTK_INSTALLED = False

GIT_REPO = Path("./")  # Overwritten in main
DST_FOLDER = Path("dst/")  # Overwritten in main


def copy():
    DST_FOLDER.mkdir(parents=True, exist_ok=True)

    folder_pattern = re.compile("w(\d\d)_")
    slide_pattern = re.compile("t\d\d_[\w_]+\.pdf")
    for week_folder in GIT_REPO.iterdir():
        week_number = folder_pattern.match(week_folder.name)
        if week_number is None:  # folder does not match mattern
            continue
        week_number = int(week_number.group(1))

        for file in week_folder.iterdir():
            if slide_pattern.match(file.name) is None:  # Slide does not match pattern (e.g. no pdf, project_exam, ...)
                continue
            copy_destination = DST_FOLDER / f"w{week_number:02d}_{file.name}"

            print(f"Copy {file} to {copy_destination}", file=sys.stderr)
            with file.open("rb") as d:
                content = d.read()

            with copy_destination.open("wb") as d:
                d.write(content)


def pdftk(source, out_file):
    if isinstance(source, (list, tuple, set)):
        args = ["pdftk"] + list(source) + ["cat", "output", out_file]
    else:
        args = ["pdftk", source, "cat", "output", out_file]

    print(args, file=sys.stderr)
    proc = subprocess.run(args)
    if proc.returncode != 0:
        print(proc, file=sys.stderr)


def weekly_slides():
    assert_pdftk()
    DST_FOLDER.mkdir(parents=True, exist_ok=True)

    folder_pattern = re.compile("w\d\d_")
    for week_folder in GIT_REPO.iterdir():
        if folder_pattern.match(week_folder.name) is None:
            continue
        pdftk(week_folder / "t*.pdf", DST_FOLDER / f"{week_folder.name}.pdf")


def full_slides():
    assert_pdftk()
    DST_FOLDER.mkdir(parents=True, exist_ok=True)

    sources = []
    folder_pattern = re.compile("w\d\d_")
    slide_pattern = re.compile("t\d\d_[\w_]+\.pdf")
    for week_folder in GIT_REPO.iterdir():
        if week_folder.is_file() or folder_pattern.match(week_folder.name) is None:
            continue
        for file in week_folder.iterdir():
            if slide_pattern.match(file.name) is None:
                continue
            sources.append(file)
    pdftk(sources, DST_FOLDER / f"ReinforcementLearning.pdf")


def assert_pdftk():
    if not PDFTK_INSTALLED:
        raise ImportError("Requires pdftk for merging slides (https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/)")


def main():
    from argparse import ArgumentParser

    # Parameter
    parser = ArgumentParser()
    parser.add_argument("-s", "--source", help="Directory to Repository", default=".", type=str)
    parser.add_argument("-d", "--destination", help="Directory of Destination", default="./slides", type=str)

    # Actions
    parser.add_argument("-W", "--weekly", help="Create a pdf for each week", action='store_true')
    parser.add_argument("-A", "--all", help="Create a pdf with all slides", action='store_true')
    parser.add_argument("-C", "--copy", help="Copy all slides into a single folder", action='store_true')

    args = parser.parse_args()

    global GIT_REPO, DST_FOLDER
    GIT_REPO = Path(args.source)
    DST_FOLDER = Path(args.destination)

    if args.weekly:
        weekly_slides()
    if args.all:
        full_slides()
    if args.copy:
        copy()

    if not (args.weekly or args.all or args.copy):
        parser.print_usage()


if __name__ == '__main__':
    main()

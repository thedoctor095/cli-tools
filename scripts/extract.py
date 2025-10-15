#!/usr/bin/env python3

from argparse import ArgumentParser
import os
from shutil import unpack_archive

def main(filename, extract_dir):
    filename = os.path.abspath(path=filename)
    extract_dir = os.path.abspath(path=extract_dir)

    dirname = os.path.dirname(p=extract_dir)

    if not os.path.exists(path=dirname):
        os.makedirs(name=dirname)
    unpack_archive(filename=filename, extract_dir=extract_dir)

if __name__ == '__main__':
    argparser = ArgumentParser()
    argparser.add_argument("filename", help="Path to the archive")
    argparser.add_argument("extract_dir", help="Target path to extract archive")
    args = argparser.parse_args()
    main(filename=args.filename, extract_dir=args.extract_dir)

#!/usr/bin/python
import argparse
import os
import subprocess
import sys


def build_and_test(number):
    if not os.path.exists('bin'):
        os.mkdir('bin')
    if subprocess.call('ghc -O -o bin/{0}.a -odir bin -hidir bin {0}.hs'.format(number), shell=True) == 0:
        subprocess.call('bin/{}.a'.format(number), shell=True)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(usage='%(prog)s <number>')
    parser.add_argument('number', help='problem number to build and test')
    args = parser.parse_args()
    build_and_test(args.number)

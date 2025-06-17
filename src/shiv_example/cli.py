import click
from .mod import print_hello

@click.command()
@click.argument('name', default='World')
def main(name):
    print_hello(name)
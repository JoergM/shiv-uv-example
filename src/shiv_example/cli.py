import click

@click.command()
@click.argument('name', default='World')
def main(name):
    print(f"Hello {name}!")
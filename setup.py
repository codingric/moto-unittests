
from setuptools import setup

setup(
    name='moto-unittests',
    version='1.0',
    url='https://github.com/codingric/moto-unittests',
    license='',

    install_requires=[
        "boto3", 'six', 'nose', 'moto'
    ],
    test_suite='src/tests/',
    tests_require=[
        "nose",
        "moto"
    ],
)

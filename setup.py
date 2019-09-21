from distutils.core import setup
from setuptools import find_packages

pkgdir="edreporthelper"
version = "0.100"

setup(name='edreporthelper',
      version=version,
      description='The packages and modules for edreporthelper',
      long_description='The packages and modules for edreporthelper',
      url='http://github.com/gear2000/saas_common',
      author='Gary Leong',
      author_email='gary@elasticdev.io',
      license="Copyright Jiffy, LLC 2019",
      packages=find_packages(),
      include_package_data=True,
      install_requires=[
      ],
      classifiers=[
          "Programming Language :: Python :: 2",
          "Programming Language :: Python :: 3",
          "Intended Audience :: Developers",
          "Topic :: Software Development",
          "Environment :: Console",
          "Operating System :: OS Independent",
      ],
      zip_safe=False)

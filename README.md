# w4tchdoge's Scoop Bucket

[![Tests](https://github.com/w4tchdoge/w4tchdoges-scoop-bucket/actions/workflows/ci.yml/badge.svg)](https://github.com/w4tchdoge/w4tchdoges-scoop-bucket/actions/workflows/ci.yml) [![Excavator](https://github.com/w4tchdoge/w4tchdoges-scoop-bucket/actions/workflows/excavator.yml/badge.svg)](https://github.com/w4tchdoge/w4tchdoges-scoop-bucket/actions/workflows/excavator.yml)

This is a Scoop bucket that I made for my personal use.

It will mostly have:
- Manifests for new applications that I either haven't gotten around to submitting to an official Scoop bucket or do not meet the requirements for submission to an official Scoop bucket.
- Fixes for an application in an official bucket that I either haven't gotten around to submitting or have submitted as a PR but are in limbo.
- Applications in an official bucket whose manifest I have slightly edited to better suit my needs.

## Add bucket to Scoop
```powershell
scoop bucket add w4tchdoge 'https://github.com/w4tchdoge/w4tchdoges-scoop-bucket'
```

## Install apps from bucket

```powershell
# Apps unique to bucket
scoop install <app>

# Apps that are also present in other buckets
scoop install w4tchdoge/<app>
```

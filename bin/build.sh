#!/usr/bin/env bash
set -u
set -e
set -o pipefail

mkdir -p cv ph
rsync -av ~/GIT/zadvorki/cv/andrei_gudkov.html cv/index.html
rsync -av --delete ~/GIT/zadvorki/cv/portfolio/ portfolio/
rsync -av --delete ~/GIT/articles/sspar/mastercopy/ sspar/
rsync -av --delete ~/GIT/articles/smine/mastercopy/ smine/
rsync -av --delete ~/GIT/articles/srvsup/mastercopy/ srvsup/
rsync -av --delete ~/GIT/articles/ph/ep1-join/mastercopy/ ph/ep1-join/
rsync -av --delete ~/GIT/articles/ph/ep2-select/mastercopy/ ph/ep2-select/
rsync -av --delete ~/GIT/articles/ph/ep3-stability/mastercopy/ ph/ep3-stability/
rsync -av --delete ~/GIT/articles/ph/ep4-faq/mastercopy/ ph/ep4-faq/
rsync -av --delete ~/GIT/articles/scrumdysf/mastercopy/ scrumdysf/
rsync -av --delete ~/GIT/articles/bm/mastercopy/ bm/
rsync -av --delete ~/GIT/articles/inline/mastercopy/ inline/
rsync -av --delete ~/GIT/articles/tcp/mastercopy/ tcp/
rsync -av --delete ~/GIT/articles/thumbnail/mastercopy/ thumbnail/
rsync -av --delete ~/GIT/articles/codesearch/mastercopy/ codesearch/
rsync -av --delete ~/GIT/articles/sim/minhash1/mastercopy/ minhash1/
rsync -av --delete ~/GIT/articles/lxcdeb/mastercopy/ lxcdeb/
rsync -av --delete ~/GIT/articles/mlp/mastercopy/ mlp/
rsync -av --delete ~/GIT/articles/transpose/mastercopy/ transpose/
rsync -av --delete ~/GIT/articles/partition/mastercopy/ partition/
bin/sitemap.py

echo 'SUCCESS'


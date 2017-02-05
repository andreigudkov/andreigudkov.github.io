#!/usr/bin/env bash
set -e
set -o pipefail

mkdir -p cv ph
rsync -av ~/SVN/cv/andrei_gudkov.html cv/index.html
rsync -av --delete ~/SVN/cv/portfolio/ portfolio/
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
bin/sitemap.py

rsync -av --delete --exclude="/.git" ./ /var/www/gudok.xyz/


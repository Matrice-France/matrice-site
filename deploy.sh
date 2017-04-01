MIX_ENV=prod mix deps.get --only prod
MIX_ENV=prod brunch build --production
MIX_ENV=prod mix phoenix.digest
MIX_ENV=prod mix compile
MIX_ENV=prod mix release
chmod -R 777 rel
rel/matrice/bin/matrice ping
rel/matrice/bin/matrice stop
rel/matrice/bin/matrice start
rel/matrice/bin/matrice ping

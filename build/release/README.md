# release
Scripting for releasing 2HOL. Written in the context of a miniOneLifeCompile environment within GitHub actions (Ephemeral).




# Approach
I need to fit this solution into GHA better

Probably going to let minorGems be its own thing and not incorporate here for now

Required steps
- Centrally generate next version and push tag to all repos
  - `oldVersion=$(git describe --tags --abbrev=0 --match="2HOL_v[0-9]*")`
  - `newVersion=$($oldVersion + 1)`
  - `echo -n "$newVersion" > dataVersionNumber.txt`
  - How to do this from OneLife repo then commit and push to Data7
  - Probably an integration or trigger an action on that repo directly

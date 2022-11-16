# Sometimes it's a README fix, or something like that - which isn't relevant for
# including in a project's CHANGELOG for example
declared_trivial = github.pr_title.include? "#trivial"

# Make it more obvious that a PR is a work in progress and shouldn't be merged yet
warn("PR is classed as Work in Progress") if github.pr_title.include? "[WIP]"

# Warn when there is a big PR
warn("Big PR") if git.lines_of_code > 600

eslint.config_file = '.eslintrc.js'
eslint.target_extensions = ['.js', '.jsx', '.ts', '.tsx']
eslint.filtering = true
eslint.bin_path = "node_modules/.bin/eslint"
eslint.lint

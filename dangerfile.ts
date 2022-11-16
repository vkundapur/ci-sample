import { danger, fail, warn } from 'danger'
import eslint from '@seadub/danger-plugin-eslint'

async function main() {
  // Big PR
  danger.git.linesOfCode('*.ts').then(lines => {
    if ((lines || 0) > 600) {
      warn('Big PR, try to keep changes smaller if you can')
    }
  })

  // PR description too small
  if (!danger.github.pr.body || danger.github.pr.body.length < 10) {
    fail('This pull request needs a description.')
  }

  // Keep lock files up to date
  const packageChanged = danger.git.modified_files.includes('package.json')
  const lockfileChanged = danger.git.modified_files.includes('yarn.lock')
  if (packageChanged && !lockfileChanged) {
    const msg = 'Changes were made to package.json, but not to yarn.lock'
    const idea = 'Perhaps you need to run `yarn install`?'
    warn(`${msg} - <i>${idea}</i>`)
  }

  // Always ensure we assign someone, so that our Slackbot can do its work correctly
  if (!danger.github.pr.assignee) {
    fail(
      'Please assign someone to merge this PR, and optionally include people who should review.',
    )
  }

  // Run eslint
  await eslint({}, ['*.ts', '*.tsx'])
}

main()
  .then()
  .catch(err => {
    fail(err.toString())
  })

import type { UserConfig } from '@commitlint/types';
import { RuleConfigSeverity } from '@commitlint/types';

const scopes = [
  'app',
  'core',
  'feature',
];

const config: UserConfig = {
  extends: ['@commitlint/config-conventional'],
  rules: {
    'scope-case': [RuleConfigSeverity.Error, 'always', 'kebab-case'],
    'scope-enum': [RuleConfigSeverity.Error, 'always', scopes],
    'scope-empty': [RuleConfigSeverity.Disabled],
    'subject-case': [RuleConfigSeverity.Disabled],
  },
};

export default config;

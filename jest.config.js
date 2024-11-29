module.exports = {
  preset: 'ts-jest',
  testEnvironment: 'node',
  transform: {
    '^.+\\.ts$': ['ts-jest', { tsconfig: 'tsconfig.json' }], 
  },
  moduleFileExtensions: ['ts', 'js'],
  testMatch: ['**/test/**/*.test.ts'], 
};

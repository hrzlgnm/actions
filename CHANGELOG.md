# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased] [compare](https://github.com/hrzlgnm/actions/compare/v2.5.3...HEAD)

### Changed

- Wait for release workflow in update-changelog to avoid concurrent edits (#182) ([#182](https://github.com/hrzlgnm/actions/pull/182))

### Fixed

- Wait for release workflow in ci.yml to prevent race with auto-merge (#184) ([#184](https://github.com/hrzlgnm/actions/pull/184))

## [2.5.3] - 2026-07-28 [compare](https://github.com/hrzlgnm/actions/compare/v2.5.2...v2.5.3)

### Changed

- *(version)* Update changelog for v2.5.3

### Fixed

- Isolate workflow concurrency groups and add AGENTS.md (#180) ([#180](https://github.com/hrzlgnm/actions/pull/180))

## [2.5.2] - 2026-07-28 [compare](https://github.com/hrzlgnm/actions/compare/v2.5.1...v2.5.2)

### Changed

- *(version)* Update changelog for v2.5.2

### Fixed

- Add -r flag to jq to strip JSON quotes from tag name (#178) ([#178](https://github.com/hrzlgnm/actions/pull/178))

## [2.5.1] - 2026-07-28 [compare](https://github.com/hrzlgnm/actions/compare/v2.5.0...v2.5.1)

### Changed

- *(version)* Update changelog for "v2.5.1"

- *(version)* Update changelog for v2.5.1

### Fixed

- Use gh api instead of invalid --draft flag for releases (#176) ([#176](https://github.com/hrzlgnm/actions/pull/176))

## [2.5.0] - 2026-07-28 [compare](https://github.com/hrzlgnm/actions/compare/v2.4.0...v2.5.0)

### Added

- Add release workflow (#171) ([#171](https://github.com/hrzlgnm/actions/pull/171))

### Changed

- *(version)* Update changelog for v2.5.0

### Fixed

- Use shared concurrency group to prevent workflow races (#173) ([#173](https://github.com/hrzlgnm/actions/pull/173))

## [2.4.0] - 2026-07-26 [compare](https://github.com/hrzlgnm/actions/compare/v2.3.1...v2.4.0)

### Added

- Add git-cliff changelog generation (#166) ([#166](https://github.com/hrzlgnm/actions/pull/166))

### Fixed

- *(ci)* Add rust toolchain to changelog workflow (#167) ([#167](https://github.com/hrzlgnm/actions/pull/167))

- *(ci)* Correct dtolnay/rust-toolchain sha (#169) ([#169](https://github.com/hrzlgnm/actions/pull/169))

## [2.3.0] - 2026-07-14 [compare](https://github.com/hrzlgnm/actions/compare/v2.2.0...v2.3.0)

### Added

- Support multiple event types for retry (#159) ([#159](https://github.com/hrzlgnm/actions/pull/159))

### Fixed

- Migrate release-drafter to new category syntax (#160) ([#160](https://github.com/hrzlgnm/actions/pull/160))

## [2.2.0] - 2026-07-13 [compare](https://github.com/hrzlgnm/actions/compare/v2.1.6...v2.2.0)

### Added

- Add retry-failed-ci reusable workflow (#158) ([#158](https://github.com/hrzlgnm/actions/pull/158))

## [2.1.0] - 2026-04-11 [compare](https://github.com/hrzlgnm/actions/compare/v2.0.7...v2.1.0)

### Added

- Actionlint reusable (#131) ([#131](https://github.com/hrzlgnm/actions/pull/131))

### Changed

- *(coderabbitai)* Enable auto reviews (#130) ([#130](https://github.com/hrzlgnm/actions/pull/130))

## [2.0.0] - 2026-02-09 [compare](https://github.com/hrzlgnm/actions/compare/v1.6.7...v2.0.0)

### Changed

- Drop c++ and cmake related workflows and docker-images (#109) ([#109](https://github.com/hrzlgnm/actions/pull/109))

## [1.6.3] - 2026-01-28 [compare](https://github.com/hrzlgnm/actions/compare/v1.6.2...v1.6.3)

### Changed

- Add dependencyDashboard to Renovate configuration (#84) ([#84](https://github.com/hrzlgnm/actions/pull/84))

- Temporary disable dependency dashboard in renovate config (#85) ([#85](https://github.com/hrzlgnm/actions/pull/85))

- Enable dependency dashboard in Renovate config (#86) ([#86](https://github.com/hrzlgnm/actions/pull/86))

## [1.6.0] - 2026-01-02 [compare](https://github.com/hrzlgnm/actions/compare/v1.5.8...v1.6.0)

### Added

- Tighten cppcheck configuration in GitHub Actions workflow (#63) ([#63](https://github.com/hrzlgnm/actions/pull/63))

## [1.5.6] - 2025-12-09 [compare](https://github.com/hrzlgnm/actions/compare/v1.5.5...v1.5.6)

### Changed

- *(ci)* Migrate to maintained actions/labeler (#43) ([#43](https://github.com/hrzlgnm/actions/pull/43))

## [1.5.2] - 2025-12-02 [compare](https://github.com/hrzlgnm/actions/compare/v1.5.1...v1.5.2)

### Changed

- *(ci)* Update schedule to rerun CI near the end of the month (#34) ([#34](https://github.com/hrzlgnm/actions/pull/34))

## [1.5.0] - 2025-11-30 [compare](https://github.com/hrzlgnm/actions/compare/v1.4.0...v1.5.0)

### Added

- Tweak docker workflow to tag `:dev` when not main (#25) ([#25](https://github.com/hrzlgnm/actions/pull/25))

- Reusable cppcheck workflow (#24) ([#24](https://github.com/hrzlgnm/actions/pull/24))

### Fixed

- Tagging with empty tag does not work, so use `:dev-latest` instead (#26) ([#26](https://github.com/hrzlgnm/actions/pull/26))

## [1.4.0] - 2025-11-30 [compare](https://github.com/hrzlgnm/actions/compare/v1.3.0...v1.4.0)

### Added

- Add docker image providing clang-format (#20) ([#20](https://github.com/hrzlgnm/actions/pull/20))

- Make clang-format docker image more complete (#21) ([#21](https://github.com/hrzlgnm/actions/pull/21))

- Add findutils to clang-format docker image (#22) ([#22](https://github.com/hrzlgnm/actions/pull/22))

- Add reusable clang-format check workflow (#23) ([#23](https://github.com/hrzlgnm/actions/pull/23))

### Changed

- Simplify added / modified Dockerfile detection (#19) ([#19](https://github.com/hrzlgnm/actions/pull/19))

## [1.3.0] - 2025-11-29 [compare](https://github.com/hrzlgnm/actions/compare/v1.2.2...v1.3.0)

### Added

- Add docker image providing gersemi cmake formatter (#13) ([#13](https://github.com/hrzlgnm/actions/pull/13))

- Reusable gersemi cmake format check workflow (#15) ([#15](https://github.com/hrzlgnm/actions/pull/15))

### Changed

- Rename gersemi job for better clarity (#17) ([#17](https://github.com/hrzlgnm/actions/pull/17))

## [1.2.2] - 2025-11-28 [compare](https://github.com/hrzlgnm/actions/compare/v1.2.1...v1.2.2)

### Fixed

- Pass the actual coverity token (#12) ([#12](https://github.com/hrzlgnm/actions/pull/12))

## [1.2.1] - 2025-11-28 [compare](https://github.com/hrzlgnm/actions/compare/v1.2.0...v1.2.1)

### Changed

- Tweak default drafted release checkboxes (#10) ([#10](https://github.com/hrzlgnm/actions/pull/10))

### Fixed

- Require coverity token and email being passed as secrets (#11) ([#11](https://github.com/hrzlgnm/actions/pull/11))

## [1.2.0] - 2025-11-28 [compare](https://github.com/hrzlgnm/actions/compare/v1.1.0...v1.2.0)

### Added

- Add reusable Coverity Scan workflow (#7) ([#7](https://github.com/hrzlgnm/actions/pull/7))

### Changed

- Unignore .github directory explicitly (#5) ([#5](https://github.com/hrzlgnm/actions/pull/5))

- Add copyright and SPDX license headers to workflow files (#6) ([#6](https://github.com/hrzlgnm/actions/pull/6))

- Tweak coderabbit settings (#8) ([#8](https://github.com/hrzlgnm/actions/pull/8))

- *(ci)* Add release drafter workflow (#9) ([#9](https://github.com/hrzlgnm/actions/pull/9))

## [1.1.0] - 2025-11-27 [compare](https://github.com/hrzlgnm/actions/compare/v1.0.0...v1.1.0)

### Added

- Add reusable typos workflow (#2) ([#2](https://github.com/hrzlgnm/actions/pull/2))

- Configure typos (#3) ([#3](https://github.com/hrzlgnm/actions/pull/3))

### Changed

- Create readme (#4) ([#4](https://github.com/hrzlgnm/actions/pull/4))

## [1.0.0] - 2025-11-27

### Added

- Add reusable docker image build and push workflow

### Changed

- Onboard renovate



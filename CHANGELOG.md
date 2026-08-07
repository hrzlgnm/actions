# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased] [compare](https://github.com/hrzlgnm/actions/compare/v2.5.5...HEAD)

### Changed

- *(ci)* Auto-approve workflow runs of github-actions[bot] PRs (#204) ([#204](https://github.com/hrzlgnm/actions/pull/204))

### Dependencies

- *(deps)* Update dtolnay/rust-toolchain digest to 4360b52 (#200) ([#200](https://github.com/hrzlgnm/actions/pull/200))

- *(deps)* Update dorny/paths-filter action to v4.0.3 (#202) ([#202](https://github.com/hrzlgnm/actions/pull/202))

## [2.5.5] - 2026-08-03 [compare](https://github.com/hrzlgnm/actions/compare/v2.5.4...v2.5.5)

### Changed

- Run changelog nightly and create PR as verified github-actions bot (#193) ([#193](https://github.com/hrzlgnm/actions/pull/193))

- *(version)* Update changelog for v2.5.5

### Dependencies

- *(deps)* Update release-drafter/release-drafter action to v7.7.0 (#190) ([#190](https://github.com/hrzlgnm/actions/pull/190))

- *(deps)* Update docker/login-action action to v4.6.0 (#192) ([#192](https://github.com/hrzlgnm/actions/pull/192))

- *(deps)* Update crate-ci/typos action to v1.49.0 (#198) ([#198](https://github.com/hrzlgnm/actions/pull/198))

### Fixed

- Include deps-only releases in changelog (#194) ([#194](https://github.com/hrzlgnm/actions/pull/194))

- Ignore docker digests in typos config (#196) ([#196](https://github.com/hrzlgnm/actions/pull/196))

## [2.5.4] - 2026-07-28 [compare](https://github.com/hrzlgnm/actions/compare/v2.5.3...v2.5.4)

### Changed

- Wait for release workflow in update-changelog to avoid concurrent edits (#182) ([#182](https://github.com/hrzlgnm/actions/pull/182))

- Document that labels are set by ci.yml, not via --label on PR create (#186) ([#186](https://github.com/hrzlgnm/actions/pull/186))

- *(version)* Update changelog for v2.5.4

### Fixed

- Wait for release workflow in ci.yml to prevent race with auto-merge (#184) ([#184](https://github.com/hrzlgnm/actions/pull/184))

- Break circular wait deadlock between ci, changelog, and release workflows (#187) ([#187](https://github.com/hrzlgnm/actions/pull/187))

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

### Dependencies

- *(deps)* Update docker/login-action action to v4.5.2 (#175) ([#175](https://github.com/hrzlgnm/actions/pull/175))

### Fixed

- Use shared concurrency group to prevent workflow races (#173) ([#173](https://github.com/hrzlgnm/actions/pull/173))

## [2.4.0] - 2026-07-26 [compare](https://github.com/hrzlgnm/actions/compare/v2.3.1...v2.4.0)

### Added

- Add git-cliff changelog generation (#166) ([#166](https://github.com/hrzlgnm/actions/pull/166))

### Dependencies

- *(deps)* Update dtolnay/rust-toolchain digest to 4cda84d (#168) ([#168](https://github.com/hrzlgnm/actions/pull/168))

### Fixed

- *(ci)* Add rust toolchain to changelog workflow (#167) ([#167](https://github.com/hrzlgnm/actions/pull/167))

- *(ci)* Correct dtolnay/rust-toolchain sha (#169) ([#169](https://github.com/hrzlgnm/actions/pull/169))

## [2.3.1] - 2026-07-24 [compare](https://github.com/hrzlgnm/actions/compare/v2.3.0...v2.3.1)

### Dependencies

- *(deps)* Update release-drafter/release-drafter action to v7.6.0 (#161) ([#161](https://github.com/hrzlgnm/actions/pull/161))

- *(deps)* Update actions/checkout digest to 3d3c42e (#162) ([#162](https://github.com/hrzlgnm/actions/pull/162))

- *(deps)* Update actions/labeler action to v7 (#163) ([#163](https://github.com/hrzlgnm/actions/pull/163))

- *(deps)* Update docker/login-action action to v4.5.0 (#164) ([#164](https://github.com/hrzlgnm/actions/pull/164))

- *(deps)* Update docker/login-action action to v4.5.1 (#165) ([#165](https://github.com/hrzlgnm/actions/pull/165))

## [2.3.0] - 2026-07-14 [compare](https://github.com/hrzlgnm/actions/compare/v2.2.0...v2.3.0)

### Added

- Support multiple event types for retry (#159) ([#159](https://github.com/hrzlgnm/actions/pull/159))

### Fixed

- Migrate release-drafter to new category syntax (#160) ([#160](https://github.com/hrzlgnm/actions/pull/160))

## [2.2.0] - 2026-07-13 [compare](https://github.com/hrzlgnm/actions/compare/v2.1.6...v2.2.0)

### Added

- Add retry-failed-ci reusable workflow (#158) ([#158](https://github.com/hrzlgnm/actions/pull/158))

### Dependencies

- *(deps)* Update release-drafter/release-drafter action to v7.4.0 (#148) ([#148](https://github.com/hrzlgnm/actions/pull/148))

- *(deps)* Update release-drafter/release-drafter action to v7.5.0 (#150) ([#150](https://github.com/hrzlgnm/actions/pull/150))

- *(deps)* Update release-drafter/release-drafter action to v7.5.1 (#151) ([#151](https://github.com/hrzlgnm/actions/pull/151))

- *(deps)* Update actions/checkout action to v7 (#149) ([#149](https://github.com/hrzlgnm/actions/pull/149))

- *(deps)* Update crate-ci/typos action to v1.48.0 (#152) ([#152](https://github.com/hrzlgnm/actions/pull/152))

- *(deps)* Update docker/build-push-action action to v7.3.0 (#153) ([#153](https://github.com/hrzlgnm/actions/pull/153))

- *(deps)* Update docker/login-action action to v4.3.0 (#154) ([#154](https://github.com/hrzlgnm/actions/pull/154))

- *(deps)* Update dorny/paths-filter action to v4.0.2 (#155) ([#155](https://github.com/hrzlgnm/actions/pull/155))

- *(deps)* Update docker/login-action action to v4.4.0 (#156) ([#156](https://github.com/hrzlgnm/actions/pull/156))

- *(deps)* Update actions/labeler action to v6.2.0 (#157) ([#157](https://github.com/hrzlgnm/actions/pull/157))

## [2.1.6] - 2026-06-04 [compare](https://github.com/hrzlgnm/actions/compare/v2.1.5...v2.1.6)

### Dependencies

- *(deps)* Update crate-ci/typos action to v1.47.1 (#145) ([#145](https://github.com/hrzlgnm/actions/pull/145))

- *(deps)* Update actions/checkout digest to df4cb1c (#146) ([#146](https://github.com/hrzlgnm/actions/pull/146))

- *(deps)* Update crate-ci/typos action to v1.47.2 (#147) ([#147](https://github.com/hrzlgnm/actions/pull/147))

## [2.1.5] - 2026-05-29 [compare](https://github.com/hrzlgnm/actions/compare/v2.1.4...v2.1.5)

### Dependencies

- *(deps)* Update release-drafter/release-drafter action to v7.3.1 (#143) ([#143](https://github.com/hrzlgnm/actions/pull/143))

- *(deps)* Update crate-ci/typos action to v1.47.0 (#144) ([#144](https://github.com/hrzlgnm/actions/pull/144))

## [2.1.4] - 2026-05-23 [compare](https://github.com/hrzlgnm/actions/compare/v2.1.3...v2.1.4)

### Dependencies

- *(deps)* Update actions/labeler action to v6.1.0 (#136) ([#136](https://github.com/hrzlgnm/actions/pull/136))

- *(deps)* Update release-drafter/release-drafter action to v7.3.0 (#137) ([#137](https://github.com/hrzlgnm/actions/pull/137))

- *(deps)* Update crate-ci/typos action to v1.46.1 (#138) ([#138](https://github.com/hrzlgnm/actions/pull/138))

- *(deps)* Update crate-ci/typos action to v1.46.2 (#139) ([#139](https://github.com/hrzlgnm/actions/pull/139))

- *(deps)* Update docker/build-push-action action to v7.2.0 (#140) ([#140](https://github.com/hrzlgnm/actions/pull/140))

- *(deps)* Update docker/login-action action to v4.2.0 (#141) ([#141](https://github.com/hrzlgnm/actions/pull/141))

- *(deps)* Update crate-ci/typos action to v1.46.3 (#142) ([#142](https://github.com/hrzlgnm/actions/pull/142))

## [2.1.3] - 2026-04-30 [compare](https://github.com/hrzlgnm/actions/compare/v2.1.2...v2.1.3)

### Dependencies

- *(deps)* Update release-drafter/release-drafter action to v7.2.1 (#134) ([#134](https://github.com/hrzlgnm/actions/pull/134))

- *(deps)* Update crate-ci/typos action to v1.46.0 (#135) ([#135](https://github.com/hrzlgnm/actions/pull/135))

## [2.1.2] - 2026-04-27 [compare](https://github.com/hrzlgnm/actions/compare/v2.1.1...v2.1.2)

### Dependencies

- *(deps)* Update crate-ci/typos action to v1.45.2 (#133) ([#133](https://github.com/hrzlgnm/actions/pull/133))

## [2.1.1] - 2026-04-13 [compare](https://github.com/hrzlgnm/actions/compare/v2.1.0...v2.1.1)

### Dependencies

- *(deps)* Update crate-ci/typos action to v1.45.1 (#132) ([#132](https://github.com/hrzlgnm/actions/pull/132))

## [2.1.0] - 2026-04-11 [compare](https://github.com/hrzlgnm/actions/compare/v2.0.7...v2.1.0)

### Added

- Actionlint reusable (#131) ([#131](https://github.com/hrzlgnm/actions/pull/131))

### Changed

- *(coderabbitai)* Enable auto reviews (#130) ([#130](https://github.com/hrzlgnm/actions/pull/130))

## [2.0.7] - 2026-04-10 [compare](https://github.com/hrzlgnm/actions/compare/v2.0.6...v2.0.7)

### Dependencies

- *(deps)* Update release-drafter/release-drafter action to v7.2.0 (#128) ([#128](https://github.com/hrzlgnm/actions/pull/128))

- *(deps)* Update docker/build-push-action action to v7.1.0 (#129) ([#129](https://github.com/hrzlgnm/actions/pull/129))

## [2.0.6] - 2026-04-02 [compare](https://github.com/hrzlgnm/actions/compare/v2.0.5...v2.0.6)

### Dependencies

- *(deps)* Update docker/login-action action to v4.1.0 (#127) ([#127](https://github.com/hrzlgnm/actions/pull/127))

## [2.0.5] - 2026-04-01 [compare](https://github.com/hrzlgnm/actions/compare/v2.0.4...v2.0.5)

### Dependencies

- *(deps)* Update release-drafter/release-drafter action to v6.3.0 (#117) ([#117](https://github.com/hrzlgnm/actions/pull/117))

- *(deps)* Update release-drafter/release-drafter action to v6.4.0 (#118) ([#118](https://github.com/hrzlgnm/actions/pull/118))

- *(deps)* Update dorny/paths-filter action to v3.0.3 (#119) ([#119](https://github.com/hrzlgnm/actions/pull/119))

- *(deps)* Update dorny/paths-filter action to v4 (#120) ([#120](https://github.com/hrzlgnm/actions/pull/120))

- *(deps)* Update release-drafter/release-drafter action to v7 (#121) ([#121](https://github.com/hrzlgnm/actions/pull/121))

- *(deps)* Update dorny/paths-filter action to v4.0.1 (#122) ([#122](https://github.com/hrzlgnm/actions/pull/122))

- *(deps)* Update release-drafter/release-drafter action to v7.1.0 (#123) ([#123](https://github.com/hrzlgnm/actions/pull/123))

- *(deps)* Update release-drafter/release-drafter action to v7.1.1 (#124) ([#124](https://github.com/hrzlgnm/actions/pull/124))

- *(deps)* Update hugo19941994/delete-draft-releases action to v3 (#125) ([#125](https://github.com/hrzlgnm/actions/pull/125))

- *(deps)* Update crate-ci/typos action to v1.45.0 (#126) ([#126](https://github.com/hrzlgnm/actions/pull/126))

## [2.0.4] - 2026-03-05 [compare](https://github.com/hrzlgnm/actions/compare/v2.0.3...v2.0.4)

### Dependencies

- *(deps)* Update docker/build-push-action action to v7 (#116) ([#116](https://github.com/hrzlgnm/actions/pull/116))

## [2.0.3] - 2026-03-04 [compare](https://github.com/hrzlgnm/actions/compare/v2.0.2...v2.0.3)

### Dependencies

- *(deps)* Update docker/login-action action to v4 (#115) ([#115](https://github.com/hrzlgnm/actions/pull/115))

## [2.0.2] - 2026-02-27 [compare](https://github.com/hrzlgnm/actions/compare/v2.0.1...v2.0.2)

### Dependencies

- *(deps)* Update crate-ci/typos action to v1.44.0 (#114) ([#114](https://github.com/hrzlgnm/actions/pull/114))

## [2.0.1] - 2026-02-16 [compare](https://github.com/hrzlgnm/actions/compare/v2.0.0...v2.0.1)

### Dependencies

- *(deps)* Update docker/build-push-action action to v6.19.0 (#110) ([#110](https://github.com/hrzlgnm/actions/pull/110))

- *(deps)* Update docker/build-push-action action to v6.19.1 (#111) ([#111](https://github.com/hrzlgnm/actions/pull/111))

- *(deps)* Update docker/build-push-action action to v6.19.2 (#112) ([#112](https://github.com/hrzlgnm/actions/pull/112))

- *(deps)* Update crate-ci/typos action to v1.43.5 (#113) ([#113](https://github.com/hrzlgnm/actions/pull/113))

## [2.0.0] - 2026-02-09 [compare](https://github.com/hrzlgnm/actions/compare/v1.6.7...v2.0.0)

### Changed

- Drop c++ and cmake related workflows and docker-images (#109) ([#109](https://github.com/hrzlgnm/actions/pull/109))

## [1.6.7] - 2026-02-09 [compare](https://github.com/hrzlgnm/actions/compare/v1.6.6...v1.6.7)

### Dependencies

- *(deps)* Update re-actors/alls-green digest to b4ca9c2 (#105) ([#105](https://github.com/hrzlgnm/actions/pull/105))

- *(deps)* Update re-actors/alls-green digest to 1f19eda (#106) ([#106](https://github.com/hrzlgnm/actions/pull/106))

- *(deps)* Update re-actors/alls-green digest to a638d64 (#107) ([#107](https://github.com/hrzlgnm/actions/pull/107))

- *(deps)* Update crate-ci/typos action to v1.43.4 (#108) ([#108](https://github.com/hrzlgnm/actions/pull/108))

## [1.6.6] - 2026-02-07 [compare](https://github.com/hrzlgnm/actions/compare/v1.6.5...v1.6.6)

### Dependencies

- *(deps)* Update crate-ci/typos action to v1.43.3 (#102) ([#102](https://github.com/hrzlgnm/actions/pull/102))

- *(deps)* Update python:3.14-slim docker digest to 486b809 (#103) ([#103](https://github.com/hrzlgnm/actions/pull/103))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to 8b66bd5 (#104) ([#104](https://github.com/hrzlgnm/actions/pull/104))

## [1.6.5] - 2026-02-06 [compare](https://github.com/hrzlgnm/actions/compare/v1.6.4...v1.6.5)

### Dependencies

- *(deps)* Update python:3.14-slim docker digest to fa0acdc (#99) ([#99](https://github.com/hrzlgnm/actions/pull/99))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to 02b8ec7 (#100) ([#100](https://github.com/hrzlgnm/actions/pull/100))

- *(deps)* Update crate-ci/typos action to v1.43.2 (#101) ([#101](https://github.com/hrzlgnm/actions/pull/101))

## [1.6.4] - 2026-02-04 [compare](https://github.com/hrzlgnm/actions/compare/v1.6.3...v1.6.4)

### Dependencies

- *(deps)* Update actions/checkout digest to de0fac2 (#89) ([#89](https://github.com/hrzlgnm/actions/pull/89))

- *(deps)* Update crate-ci/typos action to v1.43.1 (#94) ([#94](https://github.com/hrzlgnm/actions/pull/94))

- *(deps)* Update dependency gersemi to v0.25.4 (#93) ([#93](https://github.com/hrzlgnm/actions/pull/93))

- *(deps)* Update docker/login-action action to v3.7.0 (#95) ([#95](https://github.com/hrzlgnm/actions/pull/95))

- *(deps)* Update ghcr.io/void-linux/void-glibc docker digest to 28fdbec (#90) ([#90](https://github.com/hrzlgnm/actions/pull/90))

- *(deps)* Update python:3.14-slim docker digest to 1a3c6db (#92) ([#92](https://github.com/hrzlgnm/actions/pull/92))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-clang-format:v1 docker digest to 99a7d75 (#96) ([#96](https://github.com/hrzlgnm/actions/pull/96))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-cppcheck:v1 docker digest to 0195fea (#97) ([#97](https://github.com/hrzlgnm/actions/pull/97))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to 949d69c (#98) ([#98](https://github.com/hrzlgnm/actions/pull/98))

## [1.6.3] - 2026-01-28 [compare](https://github.com/hrzlgnm/actions/compare/v1.6.2...v1.6.3)

### Changed

- Add dependencyDashboard to Renovate configuration (#84) ([#84](https://github.com/hrzlgnm/actions/pull/84))

- Temporary disable dependency dashboard in renovate config (#85) ([#85](https://github.com/hrzlgnm/actions/pull/85))

- Enable dependency dashboard in Renovate config (#86) ([#86](https://github.com/hrzlgnm/actions/pull/86))

### Dependencies

- *(deps)* Update release-drafter/release-drafter action to v6.1.1 (#76) ([#76](https://github.com/hrzlgnm/actions/pull/76))

- *(deps)* Update ghcr.io/void-linux/void-glibc docker digest to 4241b9d (#77) ([#77](https://github.com/hrzlgnm/actions/pull/77))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-clang-format:v1 docker digest to 6b6a017 (#78) ([#78](https://github.com/hrzlgnm/actions/pull/78))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-cppcheck:v1 docker digest to 66eecf5 (#79) ([#79](https://github.com/hrzlgnm/actions/pull/79))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to a2bdd27 (#80) ([#80](https://github.com/hrzlgnm/actions/pull/80))

- *(deps)* Update release-drafter/release-drafter action to v6.2.0 (#81) ([#81](https://github.com/hrzlgnm/actions/pull/81))

- *(deps)* Update dependency gersemi to v0.25.2 (#82) ([#82](https://github.com/hrzlgnm/actions/pull/82))

- *(deps)* Update dependency gersemi to v0.25.3 (#83) ([#83](https://github.com/hrzlgnm/actions/pull/83))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to 308fa4a (#87) ([#87](https://github.com/hrzlgnm/actions/pull/87))

- *(deps)* Update crate-ci/typos action to v1.42.3 (#88) ([#88](https://github.com/hrzlgnm/actions/pull/88))

## [1.6.2] - 2026-01-19 [compare](https://github.com/hrzlgnm/actions/compare/v1.6.1...v1.6.2)

### Dependencies

- *(deps)* Update dependency gersemi to v0.25.1 (#67) ([#67](https://github.com/hrzlgnm/actions/pull/67))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to 3e00802 (#68) ([#68](https://github.com/hrzlgnm/actions/pull/68))

- *(deps)* Update python:3.14-slim docker digest to 38b6cc0 (#69) ([#69](https://github.com/hrzlgnm/actions/pull/69))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to 7c93eba (#70) ([#70](https://github.com/hrzlgnm/actions/pull/70))

- *(deps)* Update python:3.14-slim docker digest to 1f741ae (#71) ([#71](https://github.com/hrzlgnm/actions/pull/71))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to e22c00f (#72) ([#72](https://github.com/hrzlgnm/actions/pull/72))

- *(deps)* Update python:3.14-slim docker digest to 9b81fe9 (#73) ([#73](https://github.com/hrzlgnm/actions/pull/73))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to e7c065d (#74) ([#74](https://github.com/hrzlgnm/actions/pull/74))

- *(deps)* Update crate-ci/typos action to v1.42.1 (#75) ([#75](https://github.com/hrzlgnm/actions/pull/75))

## [1.6.1] - 2026-01-08 [compare](https://github.com/hrzlgnm/actions/compare/v1.6.0...v1.6.1)

### Dependencies

- *(deps)* Update python:3.14-slim docker digest to 3955a7d (#64) ([#64](https://github.com/hrzlgnm/actions/pull/64))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to a9c70de (#65) ([#65](https://github.com/hrzlgnm/actions/pull/65))

- *(deps)* Update crate-ci/typos action to v1.42.0 (#66) ([#66](https://github.com/hrzlgnm/actions/pull/66))

## [1.6.0] - 2026-01-02 [compare](https://github.com/hrzlgnm/actions/compare/v1.5.8...v1.6.0)

### Added

- Tighten cppcheck configuration in GitHub Actions workflow (#63) ([#63](https://github.com/hrzlgnm/actions/pull/63))

### Dependencies

- *(deps)* Update crate-ci/typos action to v1.41.0 (#59) ([#59](https://github.com/hrzlgnm/actions/pull/59))

- *(deps)* Update ghcr.io/void-linux/void-glibc docker digest to a1c486c (#60) ([#60](https://github.com/hrzlgnm/actions/pull/60))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-clang-format:v1 docker digest to be277ba (#61) ([#61](https://github.com/hrzlgnm/actions/pull/61))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-cppcheck:v1 docker digest to 20b22af (#62) ([#62](https://github.com/hrzlgnm/actions/pull/62))

## [1.5.8] - 2025-12-31 [compare](https://github.com/hrzlgnm/actions/compare/v1.5.7...v1.5.8)

### Dependencies

- *(deps)* Update crate-ci/typos action to v1.40.1 (#52) ([#52](https://github.com/hrzlgnm/actions/pull/52))

- *(deps)* Update python:3.14-slim docker digest to aa5be11 (#53) ([#53](https://github.com/hrzlgnm/actions/pull/53))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to 86ab4bd (#54) ([#54](https://github.com/hrzlgnm/actions/pull/54))

- *(deps)* Update python:3.14-slim docker digest to f7864aa (#55) ([#55](https://github.com/hrzlgnm/actions/pull/55))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to e2ca8f3 (#57) ([#57](https://github.com/hrzlgnm/actions/pull/57))

- *(deps)* Update dependency gersemi to v0.25.0 (#56) ([#56](https://github.com/hrzlgnm/actions/pull/56))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to f82c786 (#58) ([#58](https://github.com/hrzlgnm/actions/pull/58))

## [1.5.7] - 2025-12-21 [compare](https://github.com/hrzlgnm/actions/compare/v1.5.6...v1.5.7)

### Dependencies

- *(deps)* Update python:3.14-slim docker digest to 2751cbe (#46) ([#46](https://github.com/hrzlgnm/actions/pull/46))

- *(deps)* Update actions/upload-artifact action to v6 (#47) ([#47](https://github.com/hrzlgnm/actions/pull/47))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to 166d999 (#48) ([#48](https://github.com/hrzlgnm/actions/pull/48))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-clang-format:v1 docker digest to 5cb3990 (#49) ([#49](https://github.com/hrzlgnm/actions/pull/49))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-cppcheck:v1 docker digest to 721514b (#50) ([#50](https://github.com/hrzlgnm/actions/pull/50))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to c3f6fb7 (#51) ([#51](https://github.com/hrzlgnm/actions/pull/51))

## [1.5.6] - 2025-12-09 [compare](https://github.com/hrzlgnm/actions/compare/v1.5.5...v1.5.6)

### Changed

- *(ci)* Migrate to maintained actions/labeler (#43) ([#43](https://github.com/hrzlgnm/actions/pull/43))

### Dependencies

- *(deps)* Update python:3.14-slim docker digest to fd2aff3 (#44) ([#44](https://github.com/hrzlgnm/actions/pull/44))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to 726c42d (#45) ([#45](https://github.com/hrzlgnm/actions/pull/45))

## [1.5.5] - 2025-12-07 [compare](https://github.com/hrzlgnm/actions/compare/v1.5.4...v1.5.5)

### Dependencies

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to 2bcd643 (#41) ([#41](https://github.com/hrzlgnm/actions/pull/41))

## [1.5.4] - 2025-12-07 [compare](https://github.com/hrzlgnm/actions/compare/v1.5.3...v1.5.4)

### Dependencies

- *(deps)* Update dependency gersemi to v0.24.0 (#40) ([#40](https://github.com/hrzlgnm/actions/pull/40))

## [1.5.3] - 2025-12-03 [compare](https://github.com/hrzlgnm/actions/compare/v1.5.2...v1.5.3)

### Dependencies

- *(deps)* Update python:3.14-slim docker digest to 4451352 (#36) ([#36](https://github.com/hrzlgnm/actions/pull/36))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to fbfc95c (#37) ([#37](https://github.com/hrzlgnm/actions/pull/37))

- *(deps)* Update python:3.14-slim docker digest to b823ded (#38) ([#38](https://github.com/hrzlgnm/actions/pull/38))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to d299643 (#39) ([#39](https://github.com/hrzlgnm/actions/pull/39))

## [1.5.2] - 2025-12-02 [compare](https://github.com/hrzlgnm/actions/compare/v1.5.1...v1.5.2)

### Changed

- *(ci)* Update schedule to rerun CI near the end of the month (#34) ([#34](https://github.com/hrzlgnm/actions/pull/34))

### Dependencies

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to 9ab7227 (#30) ([#30](https://github.com/hrzlgnm/actions/pull/30))

- *(deps)* Update ghcr.io/void-linux/void-glibc docker digest to f5d88ca (#31) ([#31](https://github.com/hrzlgnm/actions/pull/31))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-clang-format:v1 docker digest to eb24f6a (#32) ([#32](https://github.com/hrzlgnm/actions/pull/32))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-cppcheck:v1 docker digest to 88ee0d9 (#33) ([#33](https://github.com/hrzlgnm/actions/pull/33))

- *(deps)* Update actions/checkout digest to 8e8c483 (#35) ([#35](https://github.com/hrzlgnm/actions/pull/35))

## [1.5.1] - 2025-12-01 [compare](https://github.com/hrzlgnm/actions/compare/v1.5.0...v1.5.1)

### Dependencies

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-clang-format:v1 docker digest to 389ac4d (#28) ([#28](https://github.com/hrzlgnm/actions/pull/28))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-cppcheck:v1 docker digest to b7ab536 (#29) ([#29](https://github.com/hrzlgnm/actions/pull/29))

## [1.5.0] - 2025-11-30 [compare](https://github.com/hrzlgnm/actions/compare/v1.4.0...v1.5.0)

### Added

- Tweak docker workflow to tag `:dev` when not main (#25) ([#25](https://github.com/hrzlgnm/actions/pull/25))

- Reusable cppcheck workflow (#24) ([#24](https://github.com/hrzlgnm/actions/pull/24))

### Dependencies

- *(deps)* Pin ghcr.io/hrzlgnm/actions-github-cppcheck digest (#27) ([#27](https://github.com/hrzlgnm/actions/pull/27))

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

### Dependencies

- *(deps)* Pin python docker tag to 0aecac0 (#14) ([#14](https://github.com/hrzlgnm/actions/pull/14))

- *(deps)* Update ghcr.io/hrzlgnm/actions-github-gersemi:v1 docker digest to 2539da6 (#16) ([#16](https://github.com/hrzlgnm/actions/pull/16))

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



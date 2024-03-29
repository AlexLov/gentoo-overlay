# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

DESCRIPTION="Manage your dotfiles across multiple machines, securely"
HOMEPAGE="https://chezmoi.io"

# Building this list can be done by:
#TEMP_DIR=$(mktemp -d)
#pushd $TEMP_DIR
#PV="2.26.0"
#wget https://github.com/twpayne/chezmoi/archive/v${PV}.tar.gz
#tar -xvzf v${PV}.tar.gz
#sed -Ee 's/^(.+) h1:.+$/\t"\1"/g' chezmoi-${PV}/go.sum | wl-copy
#popd
#rm -fr $TEMP_DIR

EGO_SUM=(
	"cloud.google.com/go/compute v1.7.0"
	"filippo.io/age v1.0.0"
	"filippo.io/age v1.0.0/go.mod"
	"filippo.io/edwards25519 v1.0.0-rc.1"
	"github.com/Masterminds/goutils v1.1.1"
	"github.com/Masterminds/goutils v1.1.1/go.mod"
	"github.com/Masterminds/semver/v3 v3.1.1"
	"github.com/Masterminds/semver/v3 v3.1.1/go.mod"
	"github.com/Masterminds/sprig/v3 v3.2.2"
	"github.com/Masterminds/sprig/v3 v3.2.2/go.mod"
	"github.com/Microsoft/go-winio v0.4.14/go.mod"
	"github.com/Microsoft/go-winio v0.4.16/go.mod"
	"github.com/Microsoft/go-winio v0.5.2/go.mod"
	"github.com/Microsoft/go-winio v0.6.0"
	"github.com/Microsoft/go-winio v0.6.0/go.mod"
	"github.com/ProtonMail/go-crypto v0.0.0-20210428141323-04723f9f07d7/go.mod"
	"github.com/ProtonMail/go-crypto v0.0.0-20221026131551-cf6655e29de4"
	"github.com/ProtonMail/go-crypto v0.0.0-20221026131551-cf6655e29de4/go.mod"
	"github.com/acomagu/bufpipe v1.0.3"
	"github.com/acomagu/bufpipe v1.0.3/go.mod"
	"github.com/alecthomas/chroma v0.10.0"
	"github.com/alecthomas/chroma v0.10.0/go.mod"
	"github.com/alessio/shellescape v1.4.1"
	"github.com/alessio/shellescape v1.4.1/go.mod"
	"github.com/anmitsu/go-shlex v0.0.0-20161002113705-648efa622239"
	"github.com/anmitsu/go-shlex v0.0.0-20161002113705-648efa622239/go.mod"
	"github.com/armon/go-socks5 v0.0.0-20160902184237-e75332964ef5"
	"github.com/armon/go-socks5 v0.0.0-20160902184237-e75332964ef5/go.mod"
	"github.com/atotto/clipboard v0.1.4"
	"github.com/atotto/clipboard v0.1.4/go.mod"
	"github.com/aws/aws-sdk-go-v2 v1.17.1"
	"github.com/aws/aws-sdk-go-v2 v1.17.1/go.mod"
	"github.com/aws/aws-sdk-go-v2/config v1.17.10"
	"github.com/aws/aws-sdk-go-v2/config v1.17.10/go.mod"
	"github.com/aws/aws-sdk-go-v2/credentials v1.12.23"
	"github.com/aws/aws-sdk-go-v2/credentials v1.12.23/go.mod"
	"github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.12.19"
	"github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.12.19/go.mod"
	"github.com/aws/aws-sdk-go-v2/internal/configsources v1.1.25"
	"github.com/aws/aws-sdk-go-v2/internal/configsources v1.1.25/go.mod"
	"github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 v2.4.19"
	"github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 v2.4.19/go.mod"
	"github.com/aws/aws-sdk-go-v2/internal/ini v1.3.26"
	"github.com/aws/aws-sdk-go-v2/internal/ini v1.3.26/go.mod"
	"github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.9.19"
	"github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.9.19/go.mod"
	"github.com/aws/aws-sdk-go-v2/service/secretsmanager v1.16.4"
	"github.com/aws/aws-sdk-go-v2/service/secretsmanager v1.16.4/go.mod"
	"github.com/aws/aws-sdk-go-v2/service/sso v1.11.25"
	"github.com/aws/aws-sdk-go-v2/service/sso v1.11.25/go.mod"
	"github.com/aws/aws-sdk-go-v2/service/ssooidc v1.13.8"
	"github.com/aws/aws-sdk-go-v2/service/ssooidc v1.13.8/go.mod"
	"github.com/aws/aws-sdk-go-v2/service/sts v1.17.1"
	"github.com/aws/aws-sdk-go-v2/service/sts v1.17.1/go.mod"
	"github.com/aws/smithy-go v1.13.4"
	"github.com/aws/smithy-go v1.13.4/go.mod"
	"github.com/aymanbagabas/go-osc52 v1.0.3/go.mod"
	"github.com/aymanbagabas/go-osc52 v1.2.1"
	"github.com/aymanbagabas/go-osc52 v1.2.1/go.mod"
	"github.com/aymerick/douceur v0.2.0"
	"github.com/aymerick/douceur v0.2.0/go.mod"
	"github.com/bmatcuk/doublestar/v4 v4.2.0"
	"github.com/bmatcuk/doublestar/v4 v4.2.0/go.mod"
	"github.com/bradenhilton/cityhash v1.0.0"
	"github.com/bradenhilton/cityhash v1.0.0/go.mod"
	"github.com/bradenhilton/mozillainstallhash v1.0.0"
	"github.com/bradenhilton/mozillainstallhash v1.0.0/go.mod"
	"github.com/bwesterb/go-ristretto v1.2.0/go.mod"
	"github.com/bwesterb/go-ristretto v1.2.1"
	"github.com/bwesterb/go-ristretto v1.2.1/go.mod"
	"github.com/charmbracelet/bubbles v0.14.0"
	"github.com/charmbracelet/bubbles v0.14.0/go.mod"
	"github.com/charmbracelet/bubbletea v0.21.0/go.mod"
	"github.com/charmbracelet/bubbletea v0.22.1"
	"github.com/charmbracelet/bubbletea v0.22.1/go.mod"
	"github.com/charmbracelet/glamour v0.5.0"
	"github.com/charmbracelet/glamour v0.5.0/go.mod"
	"github.com/charmbracelet/harmonica v0.2.0"
	"github.com/charmbracelet/harmonica v0.2.0/go.mod"
	"github.com/charmbracelet/lipgloss v0.5.0/go.mod"
	"github.com/charmbracelet/lipgloss v0.6.0"
	"github.com/charmbracelet/lipgloss v0.6.0/go.mod"
	"github.com/cloudflare/circl v1.1.0/go.mod"
	"github.com/cloudflare/circl v1.2.0"
	"github.com/cloudflare/circl v1.2.0/go.mod"
	"github.com/containerd/console v1.0.3"
	"github.com/containerd/console v1.0.3/go.mod"
	"github.com/coreos/go-semver v0.3.0"
	"github.com/coreos/go-semver v0.3.0/go.mod"
	"github.com/coreos/go-systemd/v22 v22.3.3-0.20220203105225-a9a7ef127534"
	"github.com/coreos/go-systemd/v22 v22.3.3-0.20220203105225-a9a7ef127534/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.2"
	"github.com/cpuguy83/go-md2man/v2 v2.0.2/go.mod"
	"github.com/creack/pty v1.1.9/go.mod"
	"github.com/creack/pty v1.1.17"
	"github.com/danieljoos/wincred v1.1.0/go.mod"
	"github.com/danieljoos/wincred v1.1.2"
	"github.com/danieljoos/wincred v1.1.2/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/dlclark/regexp2 v1.4.0/go.mod"
	"github.com/dlclark/regexp2 v1.7.0"
	"github.com/dlclark/regexp2 v1.7.0/go.mod"
	"github.com/emirpasic/gods v1.12.0/go.mod"
	"github.com/emirpasic/gods v1.18.1"
	"github.com/emirpasic/gods v1.18.1/go.mod"
	"github.com/flynn/go-shlex v0.0.0-20150515145356-3f9db97f8568"
	"github.com/flynn/go-shlex v0.0.0-20150515145356-3f9db97f8568/go.mod"
	"github.com/frankban/quicktest v1.14.3"
	"github.com/fsnotify/fsnotify v1.6.0"
	"github.com/fsnotify/fsnotify v1.6.0/go.mod"
	"github.com/gliderlabs/ssh v0.2.2"
	"github.com/gliderlabs/ssh v0.2.2/go.mod"
	"github.com/go-git/gcfg v1.5.0"
	"github.com/go-git/gcfg v1.5.0/go.mod"
	"github.com/go-git/go-billy/v5 v5.2.0/go.mod"
	"github.com/go-git/go-billy/v5 v5.3.1"
	"github.com/go-git/go-billy/v5 v5.3.1/go.mod"
	"github.com/go-git/go-git-fixtures/v4 v4.2.1"
	"github.com/go-git/go-git-fixtures/v4 v4.2.1/go.mod"
	"github.com/go-git/go-git/v5 v5.4.2"
	"github.com/go-git/go-git/v5 v5.4.2/go.mod"
	"github.com/godbus/dbus/v5 v5.0.4/go.mod"
	"github.com/godbus/dbus/v5 v5.0.6/go.mod"
	"github.com/godbus/dbus/v5 v5.1.0"
	"github.com/godbus/dbus/v5 v5.1.0/go.mod"
	"github.com/golang/mock v1.6.0"
	"github.com/golang/protobuf v1.3.1/go.mod"
	"github.com/golang/protobuf v1.5.0/go.mod"
	"github.com/golang/protobuf v1.5.2"
	"github.com/golang/protobuf v1.5.2/go.mod"
	"github.com/google/btree v1.1.2"
	"github.com/google/btree v1.1.2/go.mod"
	"github.com/google/go-cmp v0.3.0/go.mod"
	"github.com/google/go-cmp v0.5.2/go.mod"
	"github.com/google/go-cmp v0.5.5/go.mod"
	"github.com/google/go-cmp v0.5.8/go.mod"
	"github.com/google/go-cmp v0.5.9"
	"github.com/google/go-github/v48 v48.0.0"
	"github.com/google/go-github/v48 v48.0.0/go.mod"
	"github.com/google/go-querystring v1.1.0"
	"github.com/google/go-querystring v1.1.0/go.mod"
	"github.com/google/renameio v1.0.1"
	"github.com/google/renameio/v2 v2.0.0"
	"github.com/google/renameio/v2 v2.0.0/go.mod"
	"github.com/google/uuid v1.1.1/go.mod"
	"github.com/google/uuid v1.3.0"
	"github.com/google/uuid v1.3.0/go.mod"
	"github.com/gorilla/css v1.0.0"
	"github.com/gorilla/css v1.0.0/go.mod"
	"github.com/gregjones/httpcache v0.0.0-20190611155906-901d90724c79"
	"github.com/gregjones/httpcache v0.0.0-20190611155906-901d90724c79/go.mod"
	"github.com/huandu/xstrings v1.3.1/go.mod"
	"github.com/huandu/xstrings v1.3.3"
	"github.com/huandu/xstrings v1.3.3/go.mod"
	"github.com/imdario/mergo v0.3.11/go.mod"
	"github.com/imdario/mergo v0.3.12/go.mod"
	"github.com/imdario/mergo v0.3.13"
	"github.com/imdario/mergo v0.3.13/go.mod"
	"github.com/inconshreveable/mousetrap v1.0.1"
	"github.com/inconshreveable/mousetrap v1.0.1/go.mod"
	"github.com/jbenet/go-context v0.0.0-20150711004518-d14ea06fba99"
	"github.com/jbenet/go-context v0.0.0-20150711004518-d14ea06fba99/go.mod"
	"github.com/jessevdk/go-flags v1.4.0/go.mod"
	"github.com/jessevdk/go-flags v1.5.0"
	"github.com/jessevdk/go-flags v1.5.0/go.mod"
	"github.com/jmespath/go-jmespath v0.4.0"
	"github.com/jmespath/go-jmespath v0.4.0/go.mod"
	"github.com/jmespath/go-jmespath/internal/testify v1.5.1"
	"github.com/jmespath/go-jmespath/internal/testify v1.5.1/go.mod"
	"github.com/kevinburke/ssh_config v0.0.0-20201106050909-4977a11b4351/go.mod"
	"github.com/kevinburke/ssh_config v1.2.0"
	"github.com/kevinburke/ssh_config v1.2.0/go.mod"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.1"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.1/go.mod"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pretty v0.2.1/go.mod"
	"github.com/kr/pretty v0.3.0"
	"github.com/kr/pty v1.1.1"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/kr/text v0.2.0"
	"github.com/kr/text v0.2.0/go.mod"
	"github.com/kylelemons/godebug v1.1.0"
	"github.com/kylelemons/godebug v1.1.0/go.mod"
	"github.com/lucasb-eyer/go-colorful v1.2.0"
	"github.com/lucasb-eyer/go-colorful v1.2.0/go.mod"
	"github.com/matryer/is v1.2.0"
	"github.com/matryer/is v1.2.0/go.mod"
	"github.com/mattn/go-colorable v0.1.12/go.mod"
	"github.com/mattn/go-colorable v0.1.13"
	"github.com/mattn/go-colorable v0.1.13/go.mod"
	"github.com/mattn/go-isatty v0.0.13/go.mod"
	"github.com/mattn/go-isatty v0.0.14/go.mod"
	"github.com/mattn/go-isatty v0.0.16"
	"github.com/mattn/go-isatty v0.0.16/go.mod"
	"github.com/mattn/go-localereader v0.0.1"
	"github.com/mattn/go-localereader v0.0.1/go.mod"
	"github.com/mattn/go-runewidth v0.0.9/go.mod"
	"github.com/mattn/go-runewidth v0.0.10/go.mod"
	"github.com/mattn/go-runewidth v0.0.12/go.mod"
	"github.com/mattn/go-runewidth v0.0.13/go.mod"
	"github.com/mattn/go-runewidth v0.0.14"
	"github.com/mattn/go-runewidth v0.0.14/go.mod"
	"github.com/microcosm-cc/bluemonday v1.0.17/go.mod"
	"github.com/microcosm-cc/bluemonday v1.0.21"
	"github.com/microcosm-cc/bluemonday v1.0.21/go.mod"
	"github.com/mitchellh/copystructure v1.0.0/go.mod"
	"github.com/mitchellh/copystructure v1.2.0"
	"github.com/mitchellh/copystructure v1.2.0/go.mod"
	"github.com/mitchellh/go-homedir v1.1.0"
	"github.com/mitchellh/go-homedir v1.1.0/go.mod"
	"github.com/mitchellh/mapstructure v1.5.0"
	"github.com/mitchellh/mapstructure v1.5.0/go.mod"
	"github.com/mitchellh/reflectwalk v1.0.0/go.mod"
	"github.com/mitchellh/reflectwalk v1.0.2"
	"github.com/mitchellh/reflectwalk v1.0.2/go.mod"
	"github.com/muesli/ansi v0.0.0-20211018074035-2e021307bc4b/go.mod"
	"github.com/muesli/ansi v0.0.0-20211031195517-c9f0611b6c70"
	"github.com/muesli/ansi v0.0.0-20211031195517-c9f0611b6c70/go.mod"
	"github.com/muesli/cancelreader v0.2.0/go.mod"
	"github.com/muesli/cancelreader v0.2.2"
	"github.com/muesli/cancelreader v0.2.2/go.mod"
	"github.com/muesli/combinator v0.3.0"
	"github.com/muesli/combinator v0.3.0/go.mod"
	"github.com/muesli/reflow v0.2.1-0.20210115123740-9e1d0d53df68/go.mod"
	"github.com/muesli/reflow v0.3.0"
	"github.com/muesli/reflow v0.3.0/go.mod"
	"github.com/muesli/termenv v0.9.0/go.mod"
	"github.com/muesli/termenv v0.11.1-0.20220204035834-5ac8409525e0/go.mod"
	"github.com/muesli/termenv v0.11.1-0.20220212125758-44cd13922739/go.mod"
	"github.com/muesli/termenv v0.13.0"
	"github.com/muesli/termenv v0.13.0/go.mod"
	"github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e"
	"github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e/go.mod"
	"github.com/olekukonko/tablewriter v0.0.5"
	"github.com/olekukonko/tablewriter v0.0.5/go.mod"
	"github.com/pelletier/go-toml/v2 v2.0.5"
	"github.com/pelletier/go-toml/v2 v2.0.5/go.mod"
	"github.com/peterbourgon/diskv v2.0.1+incompatible"
	"github.com/peterbourgon/diskv v2.0.1+incompatible/go.mod"
	"github.com/pkg/diff v0.0.0-20210226163009-20ebb0f2a09e"
	"github.com/pkg/diff v0.0.0-20210226163009-20ebb0f2a09e/go.mod"
	"github.com/pkg/errors v0.8.1/go.mod"
	"github.com/pkg/errors v0.9.1"
	"github.com/pkg/errors v0.9.1/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/rivo/uniseg v0.1.0/go.mod"
	"github.com/rivo/uniseg v0.2.0/go.mod"
	"github.com/rivo/uniseg v0.4.2"
	"github.com/rivo/uniseg v0.4.2/go.mod"
	"github.com/rogpeppe/go-internal v1.9.0"
	"github.com/rogpeppe/go-internal v1.9.0/go.mod"
	"github.com/rs/xid v1.4.0"
	"github.com/rs/xid v1.4.0/go.mod"
	"github.com/rs/zerolog v1.28.0"
	"github.com/rs/zerolog v1.28.0/go.mod"
	"github.com/russross/blackfriday/v2 v2.1.0"
	"github.com/russross/blackfriday/v2 v2.1.0/go.mod"
	"github.com/sahilm/fuzzy v0.1.0"
	"github.com/sahilm/fuzzy v0.1.0/go.mod"
	"github.com/sergi/go-diff v1.1.0"
	"github.com/sergi/go-diff v1.1.0/go.mod"
	"github.com/shopspring/decimal v1.2.0/go.mod"
	"github.com/shopspring/decimal v1.3.1"
	"github.com/shopspring/decimal v1.3.1/go.mod"
	"github.com/sirupsen/logrus v1.4.1/go.mod"
	"github.com/sirupsen/logrus v1.7.0"
	"github.com/sirupsen/logrus v1.7.0/go.mod"
	"github.com/spf13/cast v1.3.1/go.mod"
	"github.com/spf13/cast v1.5.0"
	"github.com/spf13/cast v1.5.0/go.mod"
	"github.com/spf13/cobra v1.6.1"
	"github.com/spf13/cobra v1.6.1/go.mod"
	"github.com/spf13/pflag v1.0.5"
	"github.com/spf13/pflag v1.0.5/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/objx v0.1.1/go.mod"
	"github.com/stretchr/objx v0.4.0/go.mod"
	"github.com/stretchr/objx v0.5.0"
	"github.com/stretchr/objx v0.5.0/go.mod"
	"github.com/stretchr/testify v1.2.2/go.mod"
	"github.com/stretchr/testify v1.3.0/go.mod"
	"github.com/stretchr/testify v1.4.0/go.mod"
	"github.com/stretchr/testify v1.5.1/go.mod"
	"github.com/stretchr/testify v1.7.0/go.mod"
	"github.com/stretchr/testify v1.7.1/go.mod"
	"github.com/stretchr/testify v1.8.0/go.mod"
	"github.com/stretchr/testify v1.8.1"
	"github.com/stretchr/testify v1.8.1/go.mod"
	"github.com/twpayne/go-pinentry v0.2.0"
	"github.com/twpayne/go-pinentry v0.2.0/go.mod"
	"github.com/twpayne/go-vfs/v3 v3.0.0"
	"github.com/twpayne/go-vfs/v3 v3.0.0/go.mod"
	"github.com/twpayne/go-vfs/v4 v4.1.0"
	"github.com/twpayne/go-vfs/v4 v4.1.0/go.mod"
	"github.com/twpayne/go-xdg/v6 v6.0.0"
	"github.com/twpayne/go-xdg/v6 v6.0.0/go.mod"
	"github.com/ulikunitz/xz v0.5.10"
	"github.com/ulikunitz/xz v0.5.10/go.mod"
	"github.com/withfig/autocomplete-tools/integrations/cobra v1.2.1"
	"github.com/withfig/autocomplete-tools/integrations/cobra v1.2.1/go.mod"
	"github.com/xanzy/ssh-agent v0.3.0/go.mod"
	"github.com/xanzy/ssh-agent v0.3.2"
	"github.com/xanzy/ssh-agent v0.3.2/go.mod"
	"github.com/yuin/goldmark v1.2.1/go.mod"
	"github.com/yuin/goldmark v1.4.4/go.mod"
	"github.com/yuin/goldmark v1.5.2"
	"github.com/yuin/goldmark v1.5.2/go.mod"
	"github.com/yuin/goldmark-emoji v1.0.1"
	"github.com/yuin/goldmark-emoji v1.0.1/go.mod"
	"github.com/zalando/go-keyring v0.2.1"
	"github.com/zalando/go-keyring v0.2.1/go.mod"
	"go.etcd.io/bbolt v1.3.7-0.20220226045046-fd5535f71f48"
	"go.etcd.io/bbolt v1.3.7-0.20220226045046-fd5535f71f48/go.mod"
	"go.uber.org/atomic v1.7.0/go.mod"
	"go.uber.org/atomic v1.10.0"
	"go.uber.org/atomic v1.10.0/go.mod"
	"go.uber.org/multierr v1.8.0"
	"go.uber.org/multierr v1.8.0/go.mod"
	"golang.org/x/crypto v0.0.0-20190219172222-a4c6cb3142f2/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20200414173820-0848c9571904/go.mod"
	"golang.org/x/crypto v0.0.0-20210322153248-0c34fe9e7dc2/go.mod"
	"golang.org/x/crypto v0.0.0-20210421170649-83a5a9bb288b/go.mod"
	"golang.org/x/crypto v0.0.0-20210921155107-089bfa567519/go.mod"
	"golang.org/x/crypto v0.0.0-20220315160706-3147a52a75dd/go.mod"
	"golang.org/x/crypto v0.0.0-20220622213112-05595931fe9d/go.mod"
	"golang.org/x/crypto v0.1.0"
	"golang.org/x/crypto v0.1.0/go.mod"
	"golang.org/x/exp v0.0.0-20221028150844-83b7d23a625f"
	"golang.org/x/exp v0.0.0-20221028150844-83b7d23a625f/go.mod"
	"golang.org/x/mod v0.6.0"
	"golang.org/x/mod v0.6.0/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20190603091049-60506f45cf65/go.mod"
	"golang.org/x/net v0.0.0-20210226172049-e18ecbb05110/go.mod"
	"golang.org/x/net v0.0.0-20210326060303-6b1517762897/go.mod"
	"golang.org/x/net v0.0.0-20210614182718-04defd469f4e/go.mod"
	"golang.org/x/net v0.0.0-20211112202133-69e39bad7dc2/go.mod"
	"golang.org/x/net v0.1.0"
	"golang.org/x/net v0.1.0/go.mod"
	"golang.org/x/oauth2 v0.1.0"
	"golang.org/x/oauth2 v0.1.0/go.mod"
	"golang.org/x/sync v0.1.0"
	"golang.org/x/sync v0.1.0/go.mod"
	"golang.org/x/sys v0.0.0-20180905080454-ebe1bf3edb33/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20190507160741-ecd444e8653b/go.mod"
	"golang.org/x/sys v0.0.0-20190916202348-b4ddaad3f8a3/go.mod"
	"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037/go.mod"
	"golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod"
	"golang.org/x/sys v0.0.0-20200302150141-5c8b2ff67527/go.mod"
	"golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod"
	"golang.org/x/sys v0.0.0-20210124154548-22da62e12c0c/go.mod"
	"golang.org/x/sys v0.0.0-20210320140829-1e4c9ba3b0c4/go.mod"
	"golang.org/x/sys v0.0.0-20210324051608-47abb6519492/go.mod"
	"golang.org/x/sys v0.0.0-20210423082822-04245dca01da/go.mod"
	"golang.org/x/sys v0.0.0-20210502180810-71e4cd670f79/go.mod"
	"golang.org/x/sys v0.0.0-20210615035016-665e8c7367d1/go.mod"
	"golang.org/x/sys v0.0.0-20210630005230-0f9fa26af87c/go.mod"
	"golang.org/x/sys v0.0.0-20210816183151-1e6c022a8912/go.mod"
	"golang.org/x/sys v0.0.0-20210819135213-f52c844e1c1c/go.mod"
	"golang.org/x/sys v0.0.0-20210927094055-39ccf1dd6fa6/go.mod"
	"golang.org/x/sys v0.0.0-20211007075335-d3039528d8ac/go.mod"
	"golang.org/x/sys v0.0.0-20220204135822-1c1b9b1eba6a/go.mod"
	"golang.org/x/sys v0.0.0-20220209214540-3681064d5158/go.mod"
	"golang.org/x/sys v0.0.0-20220315194320-039c03cc5b86/go.mod"
	"golang.org/x/sys v0.0.0-20220715151400-c0bba94af5f8/go.mod"
	"golang.org/x/sys v0.0.0-20220811171246-fbc7d0a398ab/go.mod"
	"golang.org/x/sys v0.0.0-20220908164124-27713097b956/go.mod"
	"golang.org/x/sys v0.1.0"
	"golang.org/x/sys v0.1.0/go.mod"
	"golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1/go.mod"
	"golang.org/x/term v0.0.0-20210927222741-03fcf44c2211/go.mod"
	"golang.org/x/term v0.1.0"
	"golang.org/x/term v0.1.0/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.2/go.mod"
	"golang.org/x/text v0.3.3/go.mod"
	"golang.org/x/text v0.3.6/go.mod"
	"golang.org/x/text v0.3.7/go.mod"
	"golang.org/x/text v0.4.0"
	"golang.org/x/text v0.4.0/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"golang.org/x/tools v0.2.0"
	"golang.org/x/tools v0.2.0/go.mod"
	"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543/go.mod"
	"golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1"
	"google.golang.org/appengine v1.6.7"
	"google.golang.org/appengine v1.6.7/go.mod"
	"google.golang.org/protobuf v1.26.0-rc.1/go.mod"
	"google.golang.org/protobuf v1.26.0/go.mod"
	"google.golang.org/protobuf v1.28.1"
	"google.golang.org/protobuf v1.28.1/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15/go.mod"
	"gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f/go.mod"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c/go.mod"
	"gopkg.in/errgo.v2 v2.1.0"
	"gopkg.in/ini.v1 v1.67.0"
	"gopkg.in/ini.v1 v1.67.0/go.mod"
	"gopkg.in/warnings.v0 v0.1.2"
	"gopkg.in/warnings.v0 v0.1.2/go.mod"
	"gopkg.in/yaml.v1 v1.0.0-20140924161607-9f9df34309c0"
	"gopkg.in/yaml.v1 v1.0.0-20140924161607-9f9df34309c0/go.mod"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
	"gopkg.in/yaml.v2 v2.2.4/go.mod"
	"gopkg.in/yaml.v2 v2.2.8/go.mod"
	"gopkg.in/yaml.v2 v2.3.0/go.mod"
	"gopkg.in/yaml.v2 v2.4.0"
	"gopkg.in/yaml.v2 v2.4.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b/go.mod"
	"gopkg.in/yaml.v3 v3.0.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.1"
	"gopkg.in/yaml.v3 v3.0.1/go.mod"
	"howett.net/plist v1.0.0"
	"howett.net/plist v1.0.0/go.mod"
	"mvdan.cc/editorconfig v0.2.0"
	"mvdan.cc/sh/v3 v3.5.1"
	"mvdan.cc/sh/v3 v3.5.1/go.mod"
)

SOURCE_PN="github.com/twpayne/${PN}"

go-module_set_globals
SRC_URI="https://${SOURCE_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="Apache-2.0 BSD BSD-2 MIT MPL-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="mirror"

DEPEND="dev-vcs/git"
RDEPEND="${DEPEND}"

DOCS=( "${S}/assets/chezmoi.io/docs" )

src_compile() {
	go build -o ${PN} -v -work -x -ldflags \
		"-X main.version=${PV} -X main.date=$(date -u +%Y-%m-%dT%H:%M:%SZ)" \
		|| die "compile failed"
}

src_test() {
	go test -race -ldflags \
		"-X github.com/twpayne/chezmoi/internal/chezmoitest.umaskStr=0o022" \
		|| die "tests failed"
}

src_install() {
	einstalldocs
	dobin ${PN}
}

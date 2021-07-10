# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

DESCRIPTION="Manage your dotfiles across multiple machines, securely"
HOMEPAGE="https://chezmoi.io"

# Building this list can be done by:
# cd $(mktemp -d)
# PV="1.8.2"
# wget https://github.com/twpayne/chezmoi/archive/v${PV}.tar.gz
# tar -xvzf v${PV}.tar.gz
# sed -Ee 's/^(.+) h1:.+$/\t"\1"/g' chezomi-v${PV}/go.sum > go.sum.out
EGO_SUM=(
	"github.com/Masterminds/sprig/v3 v3.2.2"
	"github.com/Microsoft/go-winio v0.5.0"
	"github.com/ProtonMail/go-crypto v0.0.0-20210512092938-c05353c2d58c"
	"github.com/alecthomas/chroma v0.9.2"
	"github.com/alecthomas/colour v0.1.0"
	"github.com/alecthomas/repr v0.0.0-20201120212035-bb82daffcca2"
	"github.com/bmatcuk/doublestar/v4 v4.0.2"
	"github.com/bradenhilton/mozillainstallhash v1.0.0"
	"github.com/charmbracelet/glamour v0.3.0"
	"github.com/coreos/go-semver v0.3.0"
	"github.com/go-git/go-git/v5 v5.4.2"
	"github.com/google/go-github/v36 v36.0.0"
	"github.com/google/go-querystring v1.1.0"
	"github.com/google/gops v0.3.18"
	"github.com/google/renameio v1.0.1"
	"github.com/google/uuid v1.2.0"
	"github.com/gopherjs/gopherjs v0.0.0-20200217142428-fce0ec30dd00"
	"github.com/huandu/xstrings v1.3.2"
	"github.com/kevinburke/ssh_config v1.1.0"
	"github.com/microcosm-cc/bluemonday v1.0.14"
	"github.com/mitchellh/copystructure v1.2.0"
	"github.com/mitchellh/mapstructure v1.4.1"
	"github.com/muesli/combinator v0.3.0"
	"github.com/muesli/reflow v0.3.0"
	"github.com/muesli/termenv v0.9.0"
	"github.com/pelletier/go-toml v1.9.3"
	"github.com/rogpeppe/go-internal v1.8.0"
	"github.com/rs/zerolog v1.23.0"
	"github.com/sergi/go-diff v1.1.0"
	"github.com/smartystreets/assertions v1.2.0"
	"github.com/spf13/afero v1.6.0"
	"github.com/spf13/cobra v1.2.1"
	"github.com/spf13/viper v1.8.1"
	"github.com/stretchr/objx v0.3.0"
	"github.com/stretchr/testify v1.7.0"
	"github.com/twpayne/go-shell v0.3.0"
	"github.com/twpayne/go-vfs/v3 v3.0.0"
	"github.com/twpayne/go-xdg/v6 v6.0.0"
	"github.com/yuin/goldmark v1.3.8"
	"github.com/zalando/go-keyring v0.1.1"
	"go.etcd.io/bbolt v1.3.6"
	"go.uber.org/atomic v1.8.0"
	"go.uber.org/multierr v1.7.0"
	"golang.org/x/crypto v0.0.0-20210616213533-5ff15b29337e"
	"golang.org/x/net v0.0.0-20210614182718-04defd469f4e"
	"golang.org/x/oauth2 v0.0.0-20210622215436-a8dc77f794b6"
	"golang.org/x/sys v0.0.0-20210616094352-59db8d763f22"
	"golang.org/x/term v0.0.0-20210615171337-6886f2dfbf5b"
	"google.golang.org/protobuf v1.27.0"
	"gopkg.in/yaml.v2 v2.4.0"
	"gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b"
	"howett.net/plist v0.0.0-20201203080718-1454fab16a06"
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

DOCS=( "${S}/docs" )

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

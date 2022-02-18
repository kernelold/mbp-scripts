pkgname=mbp-scripts
pkgver=0.0.2
pkgrel=1
pkgdesc="Bundle of script for mbp"
arch=(x86_64)
license=('MIT')
##source=("$pkgname-$pkgver-source.tar.gz::https://${_vendor}/archive/v${pkgver}.tar.gz")
#sha256sums=('SKIP')
source=()

#build() {
#}

prepare() {
  cp -r "$startdir/mbp-sleep.sh" $srcdir
  cp -r "$startdir/mbp-kb-brightness-dbuss.sh" $srcdir
}

package() {
  install -Dm755 mbp-sleep.sh $pkgdir/usr/lib/systemd/system-sleep/mbp-sleep.sh
  install -Dm755 mbp-kb-brightness-dbuss.sh $pkgdir/usr/local/bin/mbp-kb-brightness-dbuss.sh
}

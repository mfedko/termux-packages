TERMUX_PKG_HOMEPAGE=https://kotlinlang.org/docs/reference/native-overview.html
TERMUX_PKG_DESCRIPTION="Kotlin/Native is a technology for compiling Kotlin to native binaries that run without any VM."
TERMUX_PKG_VERSION=0.6.2
#KOTLIN_PKG_VERSION=v0.7-fixes
KOTLIN_PKG_VERSION=v0.6.2-fixes
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/JetBrains/kotlin-native/archive/${KOTLIN_PKG_VERSION}.zip
TERMUX_PKG_SHA256=6aca1e0c1d28f140fdc7f55c389f1c0ce77bb78dfe9a79bedd36d7b2ca4f0f28
TERMUX_PKG_BUILD_IN_SRC=yes
#TERMUX_DEBUG=true

termux_step_make() {
    ./gradlew dependencies:update
    ./gradlew bundle
}

termux_step_make_install() {
    cp dist/bin/kotlinc $TERMUX_PREFIX/bin/kotlinc
    cp dist/bin/cinterop $TERMUX_PREFIX/bin/cinterop
#    pwd
#    ls -l
#    ls -l build
#    ls -l dist
#    ls -l dist/bin
}

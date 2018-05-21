import Distribution.PackageDescription
import Distribution.Simple
import Distribution.Simple.LocalBuildInfo
import Distribution.Simple.Setup
import Distribution.Simple.Utils
-- import Distribution.Types.HookedBuildInfo

main = defaultMainWithHooks simpleUserHooks
       {
         preBuild = \a b -> makePGF a b >> preBuild simpleUserHooks a b
       }

makePGF :: Args -> BuildFlags -> IO HookedBuildInfo
makePGF _ flags = do
    let verbosity = fromFlag $ buildVerbosity flags
    rawSystemExit verbosity "env"
        ["make", "--directory=gf"]
    return emptyHookedBuildInfo

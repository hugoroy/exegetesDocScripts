#!/bin/zsh

sed 's/<<~/« /g' | sed 's/~>>/ »/g' | \
    sed 's#"t":"Str","c":"«"},{"t":"Space","c":\[\]#"t":"Str","c":"« "#g' | \
    sed 's#"t":"Space","c":\[\]},{"t":"Str","c":"»"#"t":"Str","c":" »"#g' | \
    sed 's#"t":"Space","c":\[\]},{"t":"Str","c":"»\."#"t":"Str","c":" »."#g' | \
    sed 's#"t":"Space","c":\[\]},{"t":"Str","c":"»,"#"t":"Str","c":" »,"#g' | \
    sed 's#"t":"Space","c":\[\]},{"t":"Str","c":"»;"#"t":"Str","c":" »;"#g' | \
    sed 's#"t":"Space","c":\[\]},{"t":"Str","c":"»?"#"t":"Str","c":" »?"#g' | \
    sed 's#"t":"Space","c":\[\]},{"t":"Str","c":"»!"#"t":"Str","c":" »!"#g'

function! SpaceVim#api#iconv#codecs#_8859_6#import() abort
  return s:lib
endfunction

let s:tablebase = SpaceVim#api#iconv#codecs#tablebase#import()

let s:lib = {}

let s:lib.Codec = {}
call extend(s:lib.Codec, s:tablebase.Codec)
let s:lib.Codec.encoding = "8859_6"

let s:lib.Codec.decoding_table_maxlen = 1
let s:lib.Codec.encoding_table_maxlen = 1

let s:lib.Codec.decoding_table = {}
let s:lib.Codec.decoding_table["0"] = [0]
let s:lib.Codec.decoding_table["1"] = [1]
let s:lib.Codec.decoding_table["2"] = [2]
let s:lib.Codec.decoding_table["3"] = [3]
let s:lib.Codec.decoding_table["4"] = [4]
let s:lib.Codec.decoding_table["5"] = [5]
let s:lib.Codec.decoding_table["6"] = [6]
let s:lib.Codec.decoding_table["7"] = [7]
let s:lib.Codec.decoding_table["8"] = [8]
let s:lib.Codec.decoding_table["9"] = [9]
let s:lib.Codec.decoding_table["10"] = [10]
let s:lib.Codec.decoding_table["11"] = [11]
let s:lib.Codec.decoding_table["12"] = [12]
let s:lib.Codec.decoding_table["13"] = [13]
let s:lib.Codec.decoding_table["14"] = [14]
let s:lib.Codec.decoding_table["15"] = [15]
let s:lib.Codec.decoding_table["16"] = [16]
let s:lib.Codec.decoding_table["17"] = [17]
let s:lib.Codec.decoding_table["18"] = [18]
let s:lib.Codec.decoding_table["19"] = [19]
let s:lib.Codec.decoding_table["20"] = [20]
let s:lib.Codec.decoding_table["21"] = [21]
let s:lib.Codec.decoding_table["22"] = [22]
let s:lib.Codec.decoding_table["23"] = [23]
let s:lib.Codec.decoding_table["24"] = [24]
let s:lib.Codec.decoding_table["25"] = [25]
let s:lib.Codec.decoding_table["26"] = [26]
let s:lib.Codec.decoding_table["27"] = [27]
let s:lib.Codec.decoding_table["28"] = [28]
let s:lib.Codec.decoding_table["29"] = [29]
let s:lib.Codec.decoding_table["30"] = [30]
let s:lib.Codec.decoding_table["31"] = [31]
let s:lib.Codec.decoding_table["32"] = [32]
let s:lib.Codec.decoding_table["33"] = [33]
let s:lib.Codec.decoding_table["34"] = [34]
let s:lib.Codec.decoding_table["35"] = [35]
let s:lib.Codec.decoding_table["36"] = [36]
let s:lib.Codec.decoding_table["37"] = [37]
let s:lib.Codec.decoding_table["38"] = [38]
let s:lib.Codec.decoding_table["39"] = [39]
let s:lib.Codec.decoding_table["40"] = [40]
let s:lib.Codec.decoding_table["41"] = [41]
let s:lib.Codec.decoding_table["42"] = [42]
let s:lib.Codec.decoding_table["43"] = [43]
let s:lib.Codec.decoding_table["44"] = [44]
let s:lib.Codec.decoding_table["45"] = [45]
let s:lib.Codec.decoding_table["46"] = [46]
let s:lib.Codec.decoding_table["47"] = [47]
let s:lib.Codec.decoding_table["48"] = [48]
let s:lib.Codec.decoding_table["49"] = [49]
let s:lib.Codec.decoding_table["50"] = [50]
let s:lib.Codec.decoding_table["51"] = [51]
let s:lib.Codec.decoding_table["52"] = [52]
let s:lib.Codec.decoding_table["53"] = [53]
let s:lib.Codec.decoding_table["54"] = [54]
let s:lib.Codec.decoding_table["55"] = [55]
let s:lib.Codec.decoding_table["56"] = [56]
let s:lib.Codec.decoding_table["57"] = [57]
let s:lib.Codec.decoding_table["58"] = [58]
let s:lib.Codec.decoding_table["59"] = [59]
let s:lib.Codec.decoding_table["60"] = [60]
let s:lib.Codec.decoding_table["61"] = [61]
let s:lib.Codec.decoding_table["62"] = [62]
let s:lib.Codec.decoding_table["63"] = [63]
let s:lib.Codec.decoding_table["64"] = [64]
let s:lib.Codec.decoding_table["65"] = [65]
let s:lib.Codec.decoding_table["66"] = [66]
let s:lib.Codec.decoding_table["67"] = [67]
let s:lib.Codec.decoding_table["68"] = [68]
let s:lib.Codec.decoding_table["69"] = [69]
let s:lib.Codec.decoding_table["70"] = [70]
let s:lib.Codec.decoding_table["71"] = [71]
let s:lib.Codec.decoding_table["72"] = [72]
let s:lib.Codec.decoding_table["73"] = [73]
let s:lib.Codec.decoding_table["74"] = [74]
let s:lib.Codec.decoding_table["75"] = [75]
let s:lib.Codec.decoding_table["76"] = [76]
let s:lib.Codec.decoding_table["77"] = [77]
let s:lib.Codec.decoding_table["78"] = [78]
let s:lib.Codec.decoding_table["79"] = [79]
let s:lib.Codec.decoding_table["80"] = [80]
let s:lib.Codec.decoding_table["81"] = [81]
let s:lib.Codec.decoding_table["82"] = [82]
let s:lib.Codec.decoding_table["83"] = [83]
let s:lib.Codec.decoding_table["84"] = [84]
let s:lib.Codec.decoding_table["85"] = [85]
let s:lib.Codec.decoding_table["86"] = [86]
let s:lib.Codec.decoding_table["87"] = [87]
let s:lib.Codec.decoding_table["88"] = [88]
let s:lib.Codec.decoding_table["89"] = [89]
let s:lib.Codec.decoding_table["90"] = [90]
let s:lib.Codec.decoding_table["91"] = [91]
let s:lib.Codec.decoding_table["92"] = [92]
let s:lib.Codec.decoding_table["93"] = [93]
let s:lib.Codec.decoding_table["94"] = [94]
let s:lib.Codec.decoding_table["95"] = [95]
let s:lib.Codec.decoding_table["96"] = [96]
let s:lib.Codec.decoding_table["97"] = [97]
let s:lib.Codec.decoding_table["98"] = [98]
let s:lib.Codec.decoding_table["99"] = [99]
let s:lib.Codec.decoding_table["100"] = [100]
let s:lib.Codec.decoding_table["101"] = [101]
let s:lib.Codec.decoding_table["102"] = [102]
let s:lib.Codec.decoding_table["103"] = [103]
let s:lib.Codec.decoding_table["104"] = [104]
let s:lib.Codec.decoding_table["105"] = [105]
let s:lib.Codec.decoding_table["106"] = [106]
let s:lib.Codec.decoding_table["107"] = [107]
let s:lib.Codec.decoding_table["108"] = [108]
let s:lib.Codec.decoding_table["109"] = [109]
let s:lib.Codec.decoding_table["110"] = [110]
let s:lib.Codec.decoding_table["111"] = [111]
let s:lib.Codec.decoding_table["112"] = [112]
let s:lib.Codec.decoding_table["113"] = [113]
let s:lib.Codec.decoding_table["114"] = [114]
let s:lib.Codec.decoding_table["115"] = [115]
let s:lib.Codec.decoding_table["116"] = [116]
let s:lib.Codec.decoding_table["117"] = [117]
let s:lib.Codec.decoding_table["118"] = [118]
let s:lib.Codec.decoding_table["119"] = [119]
let s:lib.Codec.decoding_table["120"] = [120]
let s:lib.Codec.decoding_table["121"] = [121]
let s:lib.Codec.decoding_table["122"] = [122]
let s:lib.Codec.decoding_table["123"] = [123]
let s:lib.Codec.decoding_table["124"] = [124]
let s:lib.Codec.decoding_table["125"] = [125]
let s:lib.Codec.decoding_table["126"] = [126]
let s:lib.Codec.decoding_table["127"] = [127]
let s:lib.Codec.decoding_table["128"] = [128]
let s:lib.Codec.decoding_table["129"] = [129]
let s:lib.Codec.decoding_table["130"] = [130]
let s:lib.Codec.decoding_table["131"] = [131]
let s:lib.Codec.decoding_table["132"] = [132]
let s:lib.Codec.decoding_table["133"] = [133]
let s:lib.Codec.decoding_table["134"] = [134]
let s:lib.Codec.decoding_table["135"] = [135]
let s:lib.Codec.decoding_table["136"] = [136]
let s:lib.Codec.decoding_table["137"] = [137]
let s:lib.Codec.decoding_table["138"] = [138]
let s:lib.Codec.decoding_table["139"] = [139]
let s:lib.Codec.decoding_table["140"] = [140]
let s:lib.Codec.decoding_table["141"] = [141]
let s:lib.Codec.decoding_table["142"] = [142]
let s:lib.Codec.decoding_table["143"] = [143]
let s:lib.Codec.decoding_table["144"] = [144]
let s:lib.Codec.decoding_table["145"] = [145]
let s:lib.Codec.decoding_table["146"] = [146]
let s:lib.Codec.decoding_table["147"] = [147]
let s:lib.Codec.decoding_table["148"] = [148]
let s:lib.Codec.decoding_table["149"] = [149]
let s:lib.Codec.decoding_table["150"] = [150]
let s:lib.Codec.decoding_table["151"] = [151]
let s:lib.Codec.decoding_table["152"] = [152]
let s:lib.Codec.decoding_table["153"] = [153]
let s:lib.Codec.decoding_table["154"] = [154]
let s:lib.Codec.decoding_table["155"] = [155]
let s:lib.Codec.decoding_table["156"] = [156]
let s:lib.Codec.decoding_table["157"] = [157]
let s:lib.Codec.decoding_table["158"] = [158]
let s:lib.Codec.decoding_table["159"] = [159]
let s:lib.Codec.decoding_table["160"] = [160]
let s:lib.Codec.decoding_table["164"] = [164]
let s:lib.Codec.decoding_table["172"] = [1548]
let s:lib.Codec.decoding_table["173"] = [173]
let s:lib.Codec.decoding_table["187"] = [1563]
let s:lib.Codec.decoding_table["191"] = [1567]
let s:lib.Codec.decoding_table["193"] = [1569]
let s:lib.Codec.decoding_table["194"] = [1570]
let s:lib.Codec.decoding_table["195"] = [1571]
let s:lib.Codec.decoding_table["196"] = [1572]
let s:lib.Codec.decoding_table["197"] = [1573]
let s:lib.Codec.decoding_table["198"] = [1574]
let s:lib.Codec.decoding_table["199"] = [1575]
let s:lib.Codec.decoding_table["200"] = [1576]
let s:lib.Codec.decoding_table["201"] = [1577]
let s:lib.Codec.decoding_table["202"] = [1578]
let s:lib.Codec.decoding_table["203"] = [1579]
let s:lib.Codec.decoding_table["204"] = [1580]
let s:lib.Codec.decoding_table["205"] = [1581]
let s:lib.Codec.decoding_table["206"] = [1582]
let s:lib.Codec.decoding_table["207"] = [1583]
let s:lib.Codec.decoding_table["208"] = [1584]
let s:lib.Codec.decoding_table["209"] = [1585]
let s:lib.Codec.decoding_table["210"] = [1586]
let s:lib.Codec.decoding_table["211"] = [1587]
let s:lib.Codec.decoding_table["212"] = [1588]
let s:lib.Codec.decoding_table["213"] = [1589]
let s:lib.Codec.decoding_table["214"] = [1590]
let s:lib.Codec.decoding_table["215"] = [1591]
let s:lib.Codec.decoding_table["216"] = [1592]
let s:lib.Codec.decoding_table["217"] = [1593]
let s:lib.Codec.decoding_table["218"] = [1594]
let s:lib.Codec.decoding_table["224"] = [1600]
let s:lib.Codec.decoding_table["225"] = [1601]
let s:lib.Codec.decoding_table["226"] = [1602]
let s:lib.Codec.decoding_table["227"] = [1603]
let s:lib.Codec.decoding_table["228"] = [1604]
let s:lib.Codec.decoding_table["229"] = [1605]
let s:lib.Codec.decoding_table["230"] = [1606]
let s:lib.Codec.decoding_table["231"] = [1607]
let s:lib.Codec.decoding_table["232"] = [1608]
let s:lib.Codec.decoding_table["233"] = [1609]
let s:lib.Codec.decoding_table["234"] = [1610]
let s:lib.Codec.decoding_table["235"] = [1611]
let s:lib.Codec.decoding_table["236"] = [1612]
let s:lib.Codec.decoding_table["237"] = [1613]
let s:lib.Codec.decoding_table["238"] = [1614]
let s:lib.Codec.decoding_table["239"] = [1615]
let s:lib.Codec.decoding_table["240"] = [1616]
let s:lib.Codec.decoding_table["241"] = [1617]
let s:lib.Codec.decoding_table["242"] = [1618]

let s:lib.Codec.encoding_table = {}
let s:lib.Codec.encoding_table["0"] = [0]
let s:lib.Codec.encoding_table["1"] = [1]
let s:lib.Codec.encoding_table["2"] = [2]
let s:lib.Codec.encoding_table["3"] = [3]
let s:lib.Codec.encoding_table["4"] = [4]
let s:lib.Codec.encoding_table["5"] = [5]
let s:lib.Codec.encoding_table["6"] = [6]
let s:lib.Codec.encoding_table["7"] = [7]
let s:lib.Codec.encoding_table["8"] = [8]
let s:lib.Codec.encoding_table["9"] = [9]
let s:lib.Codec.encoding_table["10"] = [10]
let s:lib.Codec.encoding_table["11"] = [11]
let s:lib.Codec.encoding_table["12"] = [12]
let s:lib.Codec.encoding_table["13"] = [13]
let s:lib.Codec.encoding_table["14"] = [14]
let s:lib.Codec.encoding_table["15"] = [15]
let s:lib.Codec.encoding_table["16"] = [16]
let s:lib.Codec.encoding_table["17"] = [17]
let s:lib.Codec.encoding_table["18"] = [18]
let s:lib.Codec.encoding_table["19"] = [19]
let s:lib.Codec.encoding_table["20"] = [20]
let s:lib.Codec.encoding_table["21"] = [21]
let s:lib.Codec.encoding_table["22"] = [22]
let s:lib.Codec.encoding_table["23"] = [23]
let s:lib.Codec.encoding_table["24"] = [24]
let s:lib.Codec.encoding_table["25"] = [25]
let s:lib.Codec.encoding_table["26"] = [26]
let s:lib.Codec.encoding_table["27"] = [27]
let s:lib.Codec.encoding_table["28"] = [28]
let s:lib.Codec.encoding_table["29"] = [29]
let s:lib.Codec.encoding_table["30"] = [30]
let s:lib.Codec.encoding_table["31"] = [31]
let s:lib.Codec.encoding_table["32"] = [32]
let s:lib.Codec.encoding_table["33"] = [33]
let s:lib.Codec.encoding_table["34"] = [34]
let s:lib.Codec.encoding_table["35"] = [35]
let s:lib.Codec.encoding_table["36"] = [36]
let s:lib.Codec.encoding_table["37"] = [37]
let s:lib.Codec.encoding_table["38"] = [38]
let s:lib.Codec.encoding_table["39"] = [39]
let s:lib.Codec.encoding_table["40"] = [40]
let s:lib.Codec.encoding_table["41"] = [41]
let s:lib.Codec.encoding_table["42"] = [42]
let s:lib.Codec.encoding_table["43"] = [43]
let s:lib.Codec.encoding_table["44"] = [44]
let s:lib.Codec.encoding_table["45"] = [45]
let s:lib.Codec.encoding_table["46"] = [46]
let s:lib.Codec.encoding_table["47"] = [47]
let s:lib.Codec.encoding_table["48"] = [48]
let s:lib.Codec.encoding_table["49"] = [49]
let s:lib.Codec.encoding_table["50"] = [50]
let s:lib.Codec.encoding_table["51"] = [51]
let s:lib.Codec.encoding_table["52"] = [52]
let s:lib.Codec.encoding_table["53"] = [53]
let s:lib.Codec.encoding_table["54"] = [54]
let s:lib.Codec.encoding_table["55"] = [55]
let s:lib.Codec.encoding_table["56"] = [56]
let s:lib.Codec.encoding_table["57"] = [57]
let s:lib.Codec.encoding_table["58"] = [58]
let s:lib.Codec.encoding_table["59"] = [59]
let s:lib.Codec.encoding_table["60"] = [60]
let s:lib.Codec.encoding_table["61"] = [61]
let s:lib.Codec.encoding_table["62"] = [62]
let s:lib.Codec.encoding_table["63"] = [63]
let s:lib.Codec.encoding_table["64"] = [64]
let s:lib.Codec.encoding_table["65"] = [65]
let s:lib.Codec.encoding_table["66"] = [66]
let s:lib.Codec.encoding_table["67"] = [67]
let s:lib.Codec.encoding_table["68"] = [68]
let s:lib.Codec.encoding_table["69"] = [69]
let s:lib.Codec.encoding_table["70"] = [70]
let s:lib.Codec.encoding_table["71"] = [71]
let s:lib.Codec.encoding_table["72"] = [72]
let s:lib.Codec.encoding_table["73"] = [73]
let s:lib.Codec.encoding_table["74"] = [74]
let s:lib.Codec.encoding_table["75"] = [75]
let s:lib.Codec.encoding_table["76"] = [76]
let s:lib.Codec.encoding_table["77"] = [77]
let s:lib.Codec.encoding_table["78"] = [78]
let s:lib.Codec.encoding_table["79"] = [79]
let s:lib.Codec.encoding_table["80"] = [80]
let s:lib.Codec.encoding_table["81"] = [81]
let s:lib.Codec.encoding_table["82"] = [82]
let s:lib.Codec.encoding_table["83"] = [83]
let s:lib.Codec.encoding_table["84"] = [84]
let s:lib.Codec.encoding_table["85"] = [85]
let s:lib.Codec.encoding_table["86"] = [86]
let s:lib.Codec.encoding_table["87"] = [87]
let s:lib.Codec.encoding_table["88"] = [88]
let s:lib.Codec.encoding_table["89"] = [89]
let s:lib.Codec.encoding_table["90"] = [90]
let s:lib.Codec.encoding_table["91"] = [91]
let s:lib.Codec.encoding_table["92"] = [92]
let s:lib.Codec.encoding_table["93"] = [93]
let s:lib.Codec.encoding_table["94"] = [94]
let s:lib.Codec.encoding_table["95"] = [95]
let s:lib.Codec.encoding_table["96"] = [96]
let s:lib.Codec.encoding_table["97"] = [97]
let s:lib.Codec.encoding_table["98"] = [98]
let s:lib.Codec.encoding_table["99"] = [99]
let s:lib.Codec.encoding_table["100"] = [100]
let s:lib.Codec.encoding_table["101"] = [101]
let s:lib.Codec.encoding_table["102"] = [102]
let s:lib.Codec.encoding_table["103"] = [103]
let s:lib.Codec.encoding_table["104"] = [104]
let s:lib.Codec.encoding_table["105"] = [105]
let s:lib.Codec.encoding_table["106"] = [106]
let s:lib.Codec.encoding_table["107"] = [107]
let s:lib.Codec.encoding_table["108"] = [108]
let s:lib.Codec.encoding_table["109"] = [109]
let s:lib.Codec.encoding_table["110"] = [110]
let s:lib.Codec.encoding_table["111"] = [111]
let s:lib.Codec.encoding_table["112"] = [112]
let s:lib.Codec.encoding_table["113"] = [113]
let s:lib.Codec.encoding_table["114"] = [114]
let s:lib.Codec.encoding_table["115"] = [115]
let s:lib.Codec.encoding_table["116"] = [116]
let s:lib.Codec.encoding_table["117"] = [117]
let s:lib.Codec.encoding_table["118"] = [118]
let s:lib.Codec.encoding_table["119"] = [119]
let s:lib.Codec.encoding_table["120"] = [120]
let s:lib.Codec.encoding_table["121"] = [121]
let s:lib.Codec.encoding_table["122"] = [122]
let s:lib.Codec.encoding_table["123"] = [123]
let s:lib.Codec.encoding_table["124"] = [124]
let s:lib.Codec.encoding_table["125"] = [125]
let s:lib.Codec.encoding_table["126"] = [126]
let s:lib.Codec.encoding_table["127"] = [127]
let s:lib.Codec.encoding_table["128"] = [128]
let s:lib.Codec.encoding_table["129"] = [129]
let s:lib.Codec.encoding_table["130"] = [130]
let s:lib.Codec.encoding_table["131"] = [131]
let s:lib.Codec.encoding_table["132"] = [132]
let s:lib.Codec.encoding_table["133"] = [133]
let s:lib.Codec.encoding_table["134"] = [134]
let s:lib.Codec.encoding_table["135"] = [135]
let s:lib.Codec.encoding_table["136"] = [136]
let s:lib.Codec.encoding_table["137"] = [137]
let s:lib.Codec.encoding_table["138"] = [138]
let s:lib.Codec.encoding_table["139"] = [139]
let s:lib.Codec.encoding_table["140"] = [140]
let s:lib.Codec.encoding_table["141"] = [141]
let s:lib.Codec.encoding_table["142"] = [142]
let s:lib.Codec.encoding_table["143"] = [143]
let s:lib.Codec.encoding_table["144"] = [144]
let s:lib.Codec.encoding_table["145"] = [145]
let s:lib.Codec.encoding_table["146"] = [146]
let s:lib.Codec.encoding_table["147"] = [147]
let s:lib.Codec.encoding_table["148"] = [148]
let s:lib.Codec.encoding_table["149"] = [149]
let s:lib.Codec.encoding_table["150"] = [150]
let s:lib.Codec.encoding_table["151"] = [151]
let s:lib.Codec.encoding_table["152"] = [152]
let s:lib.Codec.encoding_table["153"] = [153]
let s:lib.Codec.encoding_table["154"] = [154]
let s:lib.Codec.encoding_table["155"] = [155]
let s:lib.Codec.encoding_table["156"] = [156]
let s:lib.Codec.encoding_table["157"] = [157]
let s:lib.Codec.encoding_table["158"] = [158]
let s:lib.Codec.encoding_table["159"] = [159]
let s:lib.Codec.encoding_table["160"] = [160]
let s:lib.Codec.encoding_table["164"] = [164]
let s:lib.Codec.encoding_table["1548"] = [172]
let s:lib.Codec.encoding_table["173"] = [173]
let s:lib.Codec.encoding_table["1563"] = [187]
let s:lib.Codec.encoding_table["1567"] = [191]
let s:lib.Codec.encoding_table["1569"] = [193]
let s:lib.Codec.encoding_table["1570"] = [194]
let s:lib.Codec.encoding_table["1571"] = [195]
let s:lib.Codec.encoding_table["1572"] = [196]
let s:lib.Codec.encoding_table["1573"] = [197]
let s:lib.Codec.encoding_table["1574"] = [198]
let s:lib.Codec.encoding_table["1575"] = [199]
let s:lib.Codec.encoding_table["1576"] = [200]
let s:lib.Codec.encoding_table["1577"] = [201]
let s:lib.Codec.encoding_table["1578"] = [202]
let s:lib.Codec.encoding_table["1579"] = [203]
let s:lib.Codec.encoding_table["1580"] = [204]
let s:lib.Codec.encoding_table["1581"] = [205]
let s:lib.Codec.encoding_table["1582"] = [206]
let s:lib.Codec.encoding_table["1583"] = [207]
let s:lib.Codec.encoding_table["1584"] = [208]
let s:lib.Codec.encoding_table["1585"] = [209]
let s:lib.Codec.encoding_table["1586"] = [210]
let s:lib.Codec.encoding_table["1587"] = [211]
let s:lib.Codec.encoding_table["1588"] = [212]
let s:lib.Codec.encoding_table["1589"] = [213]
let s:lib.Codec.encoding_table["1590"] = [214]
let s:lib.Codec.encoding_table["1591"] = [215]
let s:lib.Codec.encoding_table["1592"] = [216]
let s:lib.Codec.encoding_table["1593"] = [217]
let s:lib.Codec.encoding_table["1594"] = [218]
let s:lib.Codec.encoding_table["1600"] = [224]
let s:lib.Codec.encoding_table["1601"] = [225]
let s:lib.Codec.encoding_table["1602"] = [226]
let s:lib.Codec.encoding_table["1603"] = [227]
let s:lib.Codec.encoding_table["1604"] = [228]
let s:lib.Codec.encoding_table["1605"] = [229]
let s:lib.Codec.encoding_table["1606"] = [230]
let s:lib.Codec.encoding_table["1607"] = [231]
let s:lib.Codec.encoding_table["1608"] = [232]
let s:lib.Codec.encoding_table["1609"] = [233]
let s:lib.Codec.encoding_table["1610"] = [234]
let s:lib.Codec.encoding_table["1611"] = [235]
let s:lib.Codec.encoding_table["1612"] = [236]
let s:lib.Codec.encoding_table["1613"] = [237]
let s:lib.Codec.encoding_table["1614"] = [238]
let s:lib.Codec.encoding_table["1615"] = [239]
let s:lib.Codec.encoding_table["1616"] = [240]
let s:lib.Codec.encoding_table["1617"] = [241]
let s:lib.Codec.encoding_table["1618"] = [242]

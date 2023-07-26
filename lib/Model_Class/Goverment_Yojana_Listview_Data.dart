
class Data {
  final Image_photo, Name, yojana_Text, link;

  Data({
    this.Image_photo,
    this.Name,
    this.yojana_Text,
    this.link,
  });
}

final List<Data> dataList = List.generate(
    Name.length,
    (index) => Data(
          Image_photo: Image_photo[index],
          Name: Name[index],
          yojana_Text: yojana_Text[index],
          link: link[index],
        ));

List<String> Image_photo = [
  'asset/image/icon/Awas Yojna icon.png',
  'asset/image/icon/Kisan Yojana Icon.png',
  'asset/image/icon/Jamabandi Nakal Icon.png',
  'asset/image/icon/Pention Yojana Icon.png',
  'asset/image/icon/E-Shramik card Icon.png',
  'asset/image/icon/BPL Parivar Icon.png',
  'asset/image/icon/Ration Card Icon.png',
];

List<String> Name = [
  'आवास योजना',
  'किसान योजाना',
  'जमाबंदी नकल',
  'पेंशन योजाना',
  'ई- श्रमिक कार्ड',
  'BPL परिवार',
  'राशन कार्ड',
];

List yojana_Text = [
  'किसी भी आयु का कोई भी व्यक्ति जो भारत का निवासी है, बिना किसी लिंग भेद के आधार संख्या प्राप्ति हेतु स्वेच्छा से नामांकन करवा सकता है। नामांकन के इच् छुक व्यक्ति को नामांकन प्रक्रिया के दौरान, जो पूरी तरह से लागत रहित है, न् यूनतम जनसांख्यिकीय और बायोमेट्रिक सूचना उपलब् ध करवानी होती है।',
  'आवास योजना क्या हैं प्रधानमंत्री आवास योजना भारत सरकार की एक योजना है जिसके माध्यम से नगरों में रहने वाले निर्धन लोगों को उनकी कार्यशक्ति के अनुकूल घर प्रदान किये जाएँगे।सरकार ने 9 राज्यों के 305 नगरों एवं कस्बों को चिह्नित किया है जिनमें ये घर बनाए जाएंगे। केंद्र सरकार द्वारा प्रधानमंत्री आवास योजना ग्रामीण योजना ग्रामीण प्रधानमंत्री आवास योजना ग्रामीण संचालित योजना हैइस योजना का शुभारम्भ 25 जून, 2015 को हुआ । इस योजना का उद्देश्य 2022 तक सभी को घर उपलब्ध करना है। इस के लिए सरकार 20 लाख घरो का निर्माण करवाएगी जिनमे से 18 लाख घर झुग्गी-झोपड़ी वाले इलाके में बाकि 2 लाख शहरों के गरीब इलाकों में किया जायेगा प्रधान मंत्री आवास योजना के लिए कौन पात्र है सरकार ने जून 2015 में प्रधानमंत्री आवास योजना की घोषणा की थी। अगर आपके पास पक्का मकान नहीं है तो इसके लिए आवेदन कर सकते हैं। योजना का लाभ लेने के लिए आपकी उम्र 55 वर्ष होनी चाहिए। परिवार के मुखिया या आवेदक की उम्र 50 वर्ष से ज्यादा है',
  'भुलेख यानि जमीन का लेखाजोखा आप देख सकते है की अपने नाम कितनी जमीन है खसरा नम्बर से आप देख सकते है अपने नाम की जमीन कहाँ कहाँ है जमीन और जान सकते है की जमीन कितनी इस एप्लीकेशन से भारत के सभी राज्यों की भुलेख जानकारी है सभी स्टेट के बटन देखने के लिये उपर दिये गये बटन All State List पर दबाएँ िर सभी राज्यों के नाम आ जायेगा आप जिस राज्ये से हो उस पर दबाकर अपनी जमीन की जानकारी या नकल डाउनलोड कर सकते है, और यह जो जमीन की जमाबन्दी नकल है सभी ऑनलाइन है अब हर राज्य की अलग अलग साईट है तो आप चाहें तो किसी वेब ब्राउजर से सर्च करके भी देख सकते है हमने सभी राज्यों की लिस्ट बनाकर इस एक एप्लीकेशन में ही डाल दी ताकि आप लोगों को एक ही एप्प में सब साईट की लिंक मिल सके',
  'अटल पेंशन योजना में ऑनलाइन लिस्ट देखें। नीचे कुछ राज्यों की पेंशन चैक करने की लिंक जोड़ी गई हैं उससे आप ऑनलाइन पेंशन धारकों की नाम लिस्ट देख सकते हैं स्टेप वाई स्टेप फॉलो करके। बाकि राज्यों की लिंक जल्दी ही उपडेट करेंगे। अटल पेंशन योजना के पात्र | राष्ट्रीय वृद्धावस्था पेंशन योजना का लाभ केवल उन्हीं वरिष्ठ नागरिकों को दिया जाता है, जिनकी उम्र 60 वर्ष या उससे अधिक है. वृद्धावस्था पेंशन योजना के आवेदक को गरीबी रेखा से नीचे (BPL) जीवन यापन करने वाले परिवार से संबंधित होना चाहिए.',
  'e-shram Card Benefits : देशभर के करीब 28 करोड़ लोगो ने ई-श्रम पोर्टल पर अपना रजिस्ट्रेशन करा लिया हैं. इस योजना का लाभ उठाने के लिए असंगठित क्षेत्र के श्रमिकों को ई- श्रम (e-shram) की आधिकारिक वेबसाइट eshram.gov.in पर जाकर रजिस्ट्रेशन करना पड़ता हैं. असंगठित क्षेत्र में काम करने वाला कोई भी भारतीय नागरिक जिसकी उम्र 16 से 59 वर्ष के बीच है, वह इस योजना में खुद को पंजीकृत करा सकता है. आपको बता दे कि सरकार ने असंगठित क्षेत्र में काम करने वाले मजदूर वर्ग के लोगों को आर्थिक सुरक्षा देने के लिए 2020 में ई-श्रम कार्ड की शुरुआत की थी. ये लोग कर सकते हैं रजिस्ट्रेशन e-shram Card के लिए असंगठित क्षेत्र के श्रमिकों में दुकान का नौकर / सेल्समैन / हेल्पर, ऑटो चालक, ड्राइवर, पंचर बनाने वाला, चरवाहा, डेयरी वाले, सभी पशुपालक, पेपर हॉकर, जोमैटो व स्विगी के डिलीवरी बॉय, अमेज़न फ्लिपकार्ट के डिलीवरी बॉय, ईंट भठ्ठे पर काम करने वाले मजदूरो को शामिल किया गया हैं. ये सभी लोग e-shram Card बनवा सकते हैं. ये हैं फायदे ई'
      '- श्रम पोर्टल (e-shram portal) पर रजिस्टर्ड असंगठित क्षेत्र के श्रमिक को 2 लाख रुपये का एक्सीडेंट बीमा कवर मिलता है. अगर मजदूर की किसी हादसे में मृत्यु होने पर उसके परिजनों को 2 लाख रुपये की राशि दी जाएगी. अगर श्रमिक आंशिक रूप से विकलांग होता है, तो उसे 1 लाख रुपये की सहायता मिलती है. '
      'इन योजनाओं का ले लाभ e-shram Card के श्रमिक को प्रधानमंत्री श्रम योगी मानधन योजना (Shram Yogi Mandhan Yojana), स्वरोजगार करने वालों के लिए राष्ट्रीय पेंशन योजना (National Pension Scheme), प्रधानमंत्री जीवन ज्योति बीमा योजना (Jeevan Jyoti Bima Yojana), प्रधानमंत्री सुरक्षा बीमा योजना, सार्वजनिक वितरण प्रणाली, अटल पेंशन योजना, प्रधानमंत्री आवास योजना, राष्ट्रीय सामाजिक सहायता योजना, आयुष्मान भारत, प्रधानमंत्री कौशल विकास योजना, प्रधानमंत्री रोजगार सृजन योजनाओं का लाभ भी मिलता है.',
  'आवास योजना क्या हैं प्रधानमंत्री आवास योजना भारत सरकार की एक योजना है जिसके माध्यम से नगरों में रहने वाले निर्धन लोगों को उनकी कार्यशक्ति के अनुकूल घर प्रदान किये जाएँगे। सरकार ने 9 राज्यों के 305 नगरों एवं कस्बों को चिह्नित किया है जिनमें ये घर बनाए जाएंगे। केंद्र सरकार द्वारा प्रधानमंत्री आवास योजना ग्रामीण योजना ग्रामीण प्रधानमंत्री आवास योजना ग्रामीण संचालित योजना है । इस योजना का शुभारम्भ 25 जून, 2015 को हुआ । इस योजना का उद्देश्य 2022 तक सभी को घर उपलब्ध करना है। इस के लिए सरकार 20 लाख घरो का निर्माण करवाएगी जिनमे से 18 लाख घर झुग्गी-झोपड़ी वाले इलाके में बाकि 2 लाख शहरों के गरीब इलाकों में किया जायेगा प्रधान मंत्री आवास योजना के लिए कौन पात्र है सरकार ने जून 2015 में प्रधानमंत्री आवास योजना की घोषणा की थी। अगर आपके पास पक्का मकान नहीं है तो इसके लिए आवेदन कर सकते हैं। योजना का लाभ लेने के लिए आपकी उम्र 55 वर्ष होनी चाहिए। परिवार के मुखिया या आवेदक की उम्र 50 वर्ष से ज्यादा है',
  'ऊपर दिये गये बटन पर क्लिक करें फिर सभी राज्यों के नाम आएंगे जिस राज्य से आप हो उस पर दबाएँ उसके बाद सभी फिल्ड भरेंगे तो आपका राशन कार्ड ऑनलाइन खुल जायेगा उसमे आपके द्वारा लिया गया राशन का पूरा हिसाब भी देख सकते है। राशन कार्ड के बारे में जानें। राशन कार्ड भारत सरकार द्वारा जारी किया गया एक महत्वपूर्ण दस्तावेज़ है जो नागरिक की पहचान और आवासीय पते के सबूत के रूप में कार्य करती है, और भारतीयों को सब्सिडी वाले भोजन और बुनियादी उपयोगिता उत्पादों को दिलाने में मदद करती है। एक पहचान प्रमाण दस्तावेज के रूप में, इसका उपयोग ड्राइविंग लाइसेंस, आधार कार्ड और पासपोर्ट जैसे अन्य आवश्यक दस्तावेजों को बनवाने के लिए किया जा सकता है। इसका उपयोग आवासीय पते के सबूत के रूप में भी किया जा सकता है। हालांकि राशन कार्ड का सबसे महत्वपूर्ण कार्य आर्थिक रूप से कमजोर भारतीय लोगों को चावल, गेहूं, चीनी और केरोसिन जैसे आवश्यक उत्पादों को सस्ते दामो में लाभ उठाने में मदद करने में सक्षम बनाता है।'
];

List<String> link = [
  "https://pmaymis.gov.in/",
  "https://pmkisan.gov.in/",
  "https://upbhulekh.gov.in/public/public_ror/Public_ROR.jsp",
  "https://www.npscra.nsdl.co.in/scheme-details.php",
  "https://eshram.gov.in/",
  "https://ses2002.guj.nic.in/search_village.php",
  "https://nfsa.gov.in/portal/ration_card_state_portals_aa",
];

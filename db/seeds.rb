# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  User.create( email: "example@testing.com",
                 username: "darklady",
                 password: "password" )

  Craft.create([ 
    { name: "Kasongan Ceramic and Pottery Handycraft", 
     description: "Kasongan is an area in the southern Yogyakarta and is one of the famous tourist destination that popular with pottery products. This place is exactly located in the hamlet Kajen, Bangunjiwo village, Kasihan sub-district, Bantul, Yogyakarta. The craft of pottery is produced by the Society around the village with various motifs (animals and others ), vases, frames & other souvenirs. In times, the production is develop into varied products include artificial flowers from banana leaves, bamboo furnishings, mask, and many others. The quality of the products are undoubted.",
     address: "Jl. Raya Kasongan, Kajen, Bangunjiwo, Kasihan, Bantul, Daerah Istimewa Yogyakarta 55184" 
     }
  #   {
  #     name: "Kotagede Silver Town",
  #     description: "Kotagede silversmiths grew since the establishment of Kotagede as the capital of Mataram. During that time, the traditional silver, gold and copper industries began to develop, by the use of repoussé (embossing) techniques. The products of this region were to fulfill the need of household and ceremonial equipment for the royal family. Kotagede's silverware is characterized with its floral motifs based from the Hindu tradition; and their manual labor, kept historically authentic. Types of silverware produced by Kotagede are filigrees, silver-casting, sculptures (miniatures), and handmade products (necklaces, rings).",
  #     address: "Jl. Kemasan, Purbayan, Kotagede, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55172"
  #   },
  #   {
  #     name: "Kampung Batik Giriloyo",
  #     description: "Batik is a pictorial fabric that is specially made by writing or putting the wax on the cloth, then processing in a certain way that has a uniqueness value.Giriloyo village itself is the largest batik center in southeastern Jogjakarta consisting of three hamlets, namely Hamlet Karang Kulon, Giriloyo, and Cengkehan.Hundreds of people in this village have the ability to batik for generations. It is said that the art of Giriloyo batik handicraft has been around since the early 17th century. And what makes this Giriloyo batik different is the use of natural dyes for batik, though not all of them.Giriloyo Batik Village is not just a regular tourist destination, here we can learn how to make batik, local culture, and of course buy batik.",
  #     address: "Jl. Imogiri Tim. No.KM 14, Karang Kulon, Wukirsari, Imogiri, Bantul, Daerah Istimewa Yogyakarta 55782"
  #   },
  #   {
  #     name: "Kampung Kipas",
  #     description: "Established since 1985. The main and superior products of this craft are bamboo fans. Using wulung bamboo raw material as a fan frame because of its soft fiber and not too stringy. Here we can buy and see the process of making bamboo fans.",
  #     address: "Jl. Jipangan, RT. 01, Bangunjiwo, Kasihan, Bangunjiwo, Kec. Bantul, Bantul, Daerah Istimewa Yogyakarta 55184"
  #   },
  #   {
  #     name: "Keris Maker",
  #     description: "The Kris is an asymmetrical dagger with distinctive blade-patterning achieved through alternating laminations of iron and nickelous iron (pamor). The kris is famous for its distinctive wavy blade, although many have straight blades as well.",
  #     address: "Banyusumurup girirejo, Girirejo, Imogiri, Bantul, Daerah Istimewa Yogyakarta 55782"
  #   }
  #   ])

  Category.create([ 
    { name: "Gudeg" },
    { name: "Sate" },
    { name: "Snack" },
    { name: "Drinks" },
    { name: "Others" },
  ])

  Culinary.create([ 
    { name: "Gudeg Pawon",
      description: "Open: 22:00 -- Rp.17,000/ US$1.25 per portion -- Established since 1958 by Prapto Widarso. It became so popular up to the point where he decided to open his own kitchen doors to the public and invited customers to come and dine in the comfort of his own cooking area. Gudeg Pawon doesn’t have a proper dining area, guests are given the liberty to choose wherever they wanted to have their meal. If you’re keen on sampling true-blue Javanese Gudeg, then Gudeg Pawon is where it’s at. The queue tends to get worse as the night wears on, so it’s highly recommended that you make your way there way ahead of its opening time.",
      address: "Jl. Janturan UH/IV No. 36, Warungboto, Umbulharjo, Warungboto, Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55164",
      category_id: 1
     }
  #    { name: "Gudeg Yu Djum",
  #     description: "Buka: 05.00-19.00 -- Dirintis oleh Djuwariyah atau 'Yu Djum' di tahun 1951, dari sekian banyak warung yang ada, Gudeg Yu Djum mungkin lebih dikenal dibanding dengan yang lainnya. Warung Yu Djum menyediakan Paket Nasi Gudeg, Paket Besek & Paket. Kendil yang bisa dibawa pulang. Warung Yu Djum memiliki beberapa outlet yang tersebar di Yogyakarta. Warung Gudeg Yu Djum cenderung bersih, modern, dan dikelola secara profesional, cocok sebagai tempat makan bersama keluarga. Namun, bagi sebagian kalangan, Brand Yu Djum cenderung untuk turis & kalangan kelas menengah yang ingin makan Gudeg.",
  #     address: "Jl. Kaliurang km. 4,5, City, Kocoran, Caturtunggal, Depok Sub-District, Yogyakarta City, Special Region of Yogyakarta 55281",
  #     category_id: 1
  #    },
  #    { name: "Gudeg Mbarek Bu Ahmad",
  #     description: "Open daily from 5am-9pm -- Price: Rp.25,000/US$1.90 per person -- Located at the north end of Universitas Gadjah Mada, Gudeg Mbarek Bu Hj Amad was founded in 1965 by Hj Amad and has several branches scattered all over the city. The joint specialises in dried Gudeg, which can last longer, local tourists prefer Gudeg Mbarek Bu Hj Amad than its counterparts because its Gudeg is not too sweet. Hanya untuk mereka yang mencari gudeg kering, tempat selalu ramai & pelayanan agak lambat, disarankan sering mengingatkan waitress tentang pesanan kita.",
  #     address: "Jl. Kaliurang KM. 4.5, Blok CT3 No. 5, Caturtunggal, Kecamatan Depok, Kocoran, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281",
  #     category_id: 1
  #    }
  # ])

  GroupMonth.create([ 
    {name: "May"},
    {name: "June"},
    {name: "July"}
  ])

  Event.create([ 
    {
      date: "04 May - 04 June",
      name: "Artjog",
      description: "This annually event -- Open hours : 10 AM - 10 PM -- Ticket : iDR 50.000 -- ARTJOG is an art experience that provides a melting pot for new ideas and thoughts in art. There, one may find various presentation of interdisciplinary arts. Anyone with the background of visual arts, music, dance and performing arts until creative industry would have the opportunity to meet each other.",
      address: "Jalan Professor Ki Amri Yahya No.1, Pakuncen, Wirobrajan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55167",
      group_month_id: 1
    }
  #   {
  #     date: "May, 15 2018",
  #     name: "Apeman Malioboro", 
  #     description: "Sejak tahun 2010 beberapa komunitas di Malioboro mengadakan acara tahunan bertajuk Apeman. Selain memasang beberapa karya di beberapa titik di trotoar Malioboro, terdapat panggung juga acara puncak yang biasanya diisi dengan karnaval seni serta ritual memasak dan membagi-bagi apem. Ritual apeman memang sudah dipraktikkan masyarakat Jogja jelang bulan puasa setiap tahunnya. Dengan menyelenggarakannya di Malioboro, sebagai tempat ramai tujuan wisata, panitia ingin menegaskan wajah malioboro sebagai ruang budaya.",
  #     address: "Jl. Malioboro, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta",
  #     group_month_id: 1
  #   },
  #   {
  #     date: "12 June 2018",
  #     name: "Numplak Wajik", 
  #     description: "Upacara tumplak wajik adalah upacara pembuatan Wajik (makanan khas yang terbuat dari beras ketan dengan gula kelapa) untuk mengawali pembuatan pareden yang digunakan dalam upacara Garebeg. Upacara ini hanya dilakukan untuk membuat pareden estri pada Garebeg Mulud dan Garebeg Besar. Dalam upacara yang dihadiri oleh pembesar Keraton ini di lengkapi dengan sesajian. Selain itu upacara yang diselenggarakan dua hari sebelum garebeg juga diiringi dengan musik ansambel lesung-alu (alat penumbuk padi), kenthongan, dan alat musik kayu lainnya. Setelah upacara selesai dilanjutkan dengan pembuatan pareden. Prosesi tumplak wajik hanya berlangsung sekitar 30 menit.",
  #     address: "Jalan Rotowijayan Blok No. 1, Panembahan, Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta",
  #     group_month_id: 2
  #   },
  #   {
  #     date: "15 - 17 June",
  #     name: "Bakda Mangiran", 
  #     description: "Upacara Adat Tradisi Bakda Mangiran merupakan suatu akar budaya yang ada di Desa Trimurti, Srandakan, Bantul. Berawal ketika Bekel Atmorejo melakukan tahlilan dan shalawatan yang bertepatan pada tanggal 1 Syawal. Dalam prosesi tersebut banyak atensi masyarakat untuk melihatnya. Karena atensi masyarakat yang besar maka muncullah gagasan dari salah satu pembantu bekel yang bernama Karyodimejo untuk memunculkan kesenian ledek. Seiring perkembangan jaman, ditampilkan beberapa kesenian untuk menyemarakkan Bakda Mangiran. Tujuan upacara adat tradisi ini adalah menjaga dan melestarikan adat tradisi dan kebudayaan dan mengembangkan potensi adat tradisi yang ada di daerah.",
  #     address: "Jl. Raya Srandakan 40, Puluhan Lor, Trimurti, Srandakan, Bantul, Daerah Istimewa Yogyakarta 55762",
  #     group_month_id: 2
  #   },
  # ])

  CategoryLanguage.create([ 
    {name: "Transactions"},
    {name: "Greetings"},
    {name: "Ask Direction"}
  ])

  NativeLanguage.create([
    {
      category_language_id: 1,
      us: "Excuse Me",
      indonesia: "Permisi",
      javanese: "Kulonuwun"
    },
    {
      category_language_id: 1,
      us: "I want to buy",
      indonesia: "Saya mau beli",
      javanese: "Kulo badhe tumbas"
    },
    {
      category_language_id: 1,
      us: "What it is?",
      indonesia: "Apa ini?",
      javanese: "Nopo niku?"
    },
    {
      category_language_id: 1,
      us: "How much?",
      indonesia: "Berapa harganya?",
      javanese: "Reginipun pinten?"
    },
    {
      category_language_id: 1,
      us: "Thank you",
      indonesia: "Terima Kasih",
      javanese: "Matuh Suwun"
    },
  ])
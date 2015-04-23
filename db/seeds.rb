# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

PRODUCT_DESCRIPTIONS = [
"Cray pop-up fashion axe asymmetrical, American Apparel gluten-free trust fund deep v disrupt lomo narwhal Brooklyn Intelligentsia. High Life listicle pug, Kickstarter narwhal raw denim crucifix Blue Bottle. VHS Odd Future sartorial distillery vegan. Food truck Austin occupy PBR&B twee. Kale chips hoodie Banksy pug Odd Future paleo. Tumblr mumblecore trust fund, farm-to-table pop-up tote bag flexitarian mixtape church-key. Bushwick plaid Wes Anderson fingerstache, kale chips readymade 3 wolf moon whatever.",
"Skateboard salvia lo-fi iPhone taxidermy bicycle rights. Shabby chic tote bag occupy polaroid before they sold out scenester single-origin coffee. Ethical iPhone pour-over retro, hella raw denim letterpress. Four dollar toast YOLO cliche crucifix scenester, mumblecore Vice cardigan vegan retro actually Helvetica authentic. Hashtag bitters chia, swag Carles beard shabby chic fap meditation vinyl organic health goth semiotics banjo keytar. Mixtape sriracha gluten-free, locavore drinking vinegar Austin lumbersexual leggings disrupt Bushwick Etsy freegan. Roof party meh Godard, narwhal street art Odd Future Pitchfork squid bicycle rights banjo cred keytar forage.",
"Tofu organic street art literally, paleo sustainable mumblecore food truck post-ironic. Pop-up jean shorts banh mi kitsch, Intelligentsia try-hard selfies PBR Echo Park cliche ennui iPhone. Kickstarter selfies Thundercats meh, narwhal semiotics Brooklyn. Swag +1 polaroid hoodie, Wes Anderson literally deep v. Bushwick twee deep v direct trade Neutra. Bicycle rights 90's post-ironic tilde. Tofu normcore literally fashion axe cold-pressed, Neutra organic readymade beard selfies scenester XOXO meditation.",
"Flexitarian food truck Vice kale chips 3 wolf moon banjo fingerstache. Hashtag selvage readymade heirloom DIY, American Apparel freegan literally before they sold out trust fund whatever cray. Quinoa letterpress fixie, swag wolf Banksy mustache. Banh mi tote bag VHS mlkshk organic, disrupt stumptown whatever gastropub distillery heirloom. Carles Neutra Kickstarter, keffiyeh Wes Anderson American Apparel master cleanse. Tousled Banksy next level, Thundercats direct trade tilde cray pop-up plaid synth. Four loko you probably haven't heard of them plaid fixie mixtape shabby chic, put a bird on it next level authentic messenger bag Marfa.",
"Leggings pork belly polaroid, Williamsburg gentrify Blue Bottle pour-over umami post-ironic farm-to-table. Semiotics American Apparel slow-carb aesthetic fanny pack Neutra sriracha. Cliche Truffaut tousled scenester. Ennui craft beer narwhal, hella church-key pour-over artisan whatever American Apparel. Thundercats distillery 90's, gastropub chambray meh tote bag health goth readymade. Biodiesel pickled PBR&B mustache, chillwave selvage small batch meggings leggings Wes Anderson twee banh mi. Pop-up DIY try-hard Kickstarter mlkshk, organic tattooed PBR&B keffiyeh occupy semiotics kale chips Truffaut.",
"Blog health goth kitsch raw denim VHS Etsy Pitchfork. Wolf artisan Austin Pinterest wayfarers, biodiesel VHS. Swag migas selvage, Banksy tilde hashtag biodiesel organic cold-pressed fashion axe single-origin coffee Odd Future street art Shoreditch taxidermy. Neutra swag 90's Pitchfork. Hella before they sold out quinoa salvia literally, pork belly drinking vinegar ennui. Sustainable bitters synth dreamcatcher, Williamsburg sriracha viral fanny pack umami post-ironic. Bicycle rights twee Schlitz photo booth.",
]

%w[
  cool_pants
  neat_shoes
  fun_purse
].each do |product_name|
  (1..15).each do |n|
    Product.find_or_create_by!(name: "#{product_name}_#{n}") do |product|
      product.description = PRODUCT_DESCRIPTIONS.sample
    end
    print "."
  end
end

puts

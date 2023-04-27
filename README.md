# ckim_capstone
caroline kim's dda9 capstone repo
# Phyto-Garden Guide: A Practical Guide to Gardening for a Healthier Environment

Phyto-Garden Guide is an interactive dashboard that recommends commercially available plants for an everyday Phyto-Garden based on site-type or specific pollutants. It aims to illuminate the benefits of gardening for a healthier environment and to empower potential Phyto-Gardeners by offering a starting point for planning and planting their Phyto-Garden.

[Phyto-Garden Guide on Tableau Public](https://public.tableau.com/views/Phyto-GardenGuide/Phyto_Guide?:language=en-US&:display_count=n&:origin=viz_share_link)


## A Brief Introduction: What is phytoremediation and why should I plant a Phyto-Garden?

Phytoremediation refers to the ability of living plants and micro-organisms to de-contaminate the environment through bioaccumulation, whereby the absorb the toxin and lock it in place, or one or more other natural phytoremediation processes. It is a highly effective, cost-efficient, and achievable solution to many of the environmental issues faced today. And best of all, it is an option readily available to anyone with access to a garden, large or small. 

I first began researching the ability of living plants to purify soil, air, and water of toxic pollutants after testing the well-water at our 163 year-old farmhouse in scenic, rural Central New York. I was shocked to learn that not only were there too many bacteria to count, but there was a substantial amount of lead in our water, and [no amount of lead is safe](https://www.who.int/news-room/fact-sheets/detail/lead-poisoning-and-health). Before seeing the test results, I had never considered the impact of the lead paint peeling off our barn with every rain, or the leaded-gasoline particles remaining from pre-1975 automobiles, perpetually being kicked back up into the air we breathe and washing into the water we drink.

Already a passionate native plant gardener, when I came across the results of a [Swedish phytofiltration study](https://www.sciencedirect.com/science/article/abs/pii/S026974911731206X) whereby aquatic moss removed 82% of arsenic from polluted water within only one hour. These impressive results empowered me to create a targeted and strategic approach to remediating my personal environmental concerns, further energizing my passion for gardening. The result is Phyto-Garden Guide, a gardener's first step toward harnessing the highly advanced, efficient and sustainable technology of plants to address the environmental concerns of today and ensuring a healthier tomorrow. 


## An Overview of Phyto-Garden Guide: What is Phyto-Garden Guide and what is it not?

The purpose of Phyto-Garden Guide is to recommend commercially available plants for an everyday Phyto-Garden. It is a gardener's first step toward harnessing the highly advanced, efficient and sustainable technology of plants to create a cleaner and healthier environment. It is not a substitute for expert advice, such as your extension office can provide, especially if you have serious concerns about safety and environmental hazards. 

***While Phyto-Garden Guide draws on published research and literature, it is important to note that it makes inferences as well. The primary inference drawn by Phyto-Garden Guide is that plants in the same genus have the same phytoremediation abilities.*** 

While this is largely a reasonable assumption, it is not always the case. Therefore, Phyto-Garden Guide distinguishes when a particular species is recommended because it is known to have phytoremediation abilities, or when it is recommended because of its genus.

Because unique plant species number in the hundreds of thousands, with even more varieties, only a fraction of known species will ever be studied. Furthermore, not all of the species studied by scientists are commercially available, nor will they all be suitable for every site based on their light, water, and soil requirements. By infering that plants in the same genus have the same phytoremediaton abilities, Phyto-Garden Guide is able to recommend far more commercially available species with the potential to thrive in your garden and purify your environment. 


## Methodology: Approach, Data Sources and Tools

The sea of plant-related research is vast and so Phyto-Garden Guide makes good use of the [species lists Eric Fuselier of Wild Ones](https://wildones.org/phytoremediation-with-eric-fuselier/) thoughtfully compiled based on his review of published research and literature. Using *regex* and an extract from the [USDA PLANTS database](https://plants.usda.gov/home/downloads), I parsed, sorted and analyzed the PDF-format lists in *Python*.

The lists of plants species and genera were then cross-referenced against the [2019 Prairie Moon Nursery Cultural Guide & Pricing](https://www.prairiemoon.com/blog/resources-and-information) Excel file to determine commercially available species using *SQL and Python*.

Finally, *Tableau* was utilized to neatly order the data to make recommendations based on site-types and pollutants. Additionally, [EPA-widgets](https://www.epa.gov/enviro/widgets#other) were imbedded to allow the user to explore information about their environment and EPA clean-up sites near them.


## The Process: Known Issues, Challenges, and Solutions

Before Phyto-Garden Guide, there was Proto-Garden Guide, a pared down version of They're All Sisters Garden Guide, the food forest and habitat restoration desk reference of my dreams. Long beleagured by the limited functionality that seemed to impair all of the many many gardening resources out there, I was stoked at the chance to create a handy resource for my own gardening projects. For all my enthusiasm, I still had to determine the best approach for my project, and how I could add the most value. While I have spent more time than I care to admit researching habitat restoration and food forests, the further I dug into the topics, the further I seemed to stray.

In the midst of my garden guide dilemma, I came across the concept of phytoremediation. Blown away by the arsenic-devouring aquatic moss and the urgency I felt to purify my own environment, I was immediately drawn to the subject. While so many of the wonderful gardening resources out there provide information about pollinators and wildlife (yay pollinators and wildlife!), I had never once come across a phytoremediation section in any of them.  

My objective began to take shape. While phytoremediation research articles are great, they don't offer the information simple, practical information an everyday gardener needs to plan and plant a Phyto-Garden. 
How was a gardener supposed to know what to plant? Not just what plants have phytoremediation abilities, but where can they buy them? How can they choose the best plants for their garden?

Impressed by the thoughtful, research-based lists compiled by Eric Fuselier at Wild Ones, I felt they were a good starting point for my project, especially because, as the lists mention, they do not consider whether the plants are suitable for home landscaping.

In order to maximize the value of the lists, I decided to cross-reference them against the plants offered by Prairie Moon Nursery, a native plant nursery with extensive online offerings, to determine commercial availability. I used regex and a USDA PLANTS download of plant names to comb the Wild Ones PDFs, which hadn't parsed neatly, and cross-referenced the results against the Prairie Moon pricing guide Excel using SQL to determine commercial availability. 

Initial analysis showed that only 24 species listed in Wild Ones were available from Prairie Moon. Yet, just because the phytoremediation abilities of a plant haven't been proven, or a particular species didn't come up in Eric Fuselier's review of the literature, that doesn't mean a plant doesn't have phytoremediation abilities.

To create a more practical Phyto-Garden resource, I decided to take a genus-level approach and identify all commercially available species in the same genus as plants known to have phytoremediation abilities, while noting whether the species is being recommended because it has been proven to have certain phytoremediation abilities, or if it is being recommended based on its genus. From there, Phyto-Gardeners can decide for themselves which plants are best for their garden. 

Once I had the list of recommended species and their phytoremediation abilities (or those of species in the same genus), I decided to make recommendations from two different angles. First, plants would be recommended based on pollutant categories (air, heavy metals, chlorinated solvents, pesticides and petroleum). Secondly, plants would be recommended by site-type (autobody shop, agriculture, residential areas, etc.), which would also provide an opportunity to educate Phyto-Gardeners about contaminants they might not realize could be in their environment. To this same point, I chose to embed useful EPA widgets that provide information about the users environment and EPA cleanup sites near them. Lastly, since Prairie Moon does not offer trees online, I dedicated a page to trees that promote cleaner air and water.

The end product is Phyto-Garden Guide, an interactive dashboard I truly hope is useful and inspiring to potential Phyto-Gardeners everywhere. 


## Acknowledgements

First and foremost, I would like to thank Mars and Ranch, my loyal greyhounds and full time supervisors. I truly couldn't have done it without their very close, very thorough supervision.

I would also like to thank the NSS instructors and volunteers, as well as my classmates, for sharing their knowledge and their time. 

And with a heart full of gratitude, I thank my nature-loving friends, neighbors and family members, who have taught me to slow down and smell the bee balm.




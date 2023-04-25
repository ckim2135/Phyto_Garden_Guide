# ckim_capstone
caroline kim's dda9 capstone repo
# Phyto-Garden Guide: A Practical Guide to Gardening for a Healthier Environment

Phyto-Garden Guide is an interactive dashboard that recommends commercially available plants for an everyday Phyto-Garden based on site-type or specific pollutants. It aims to illuminate the benefits of gardening for a healthier environment and to empower potential Phyto-Gardeners by offering a starting point for planning and planting their Phyto-Garden.

<ol> Table of Contents
    <li> A Brief Introduction: What is phytoremediation and why should I plant a Phyto-Garden?</li>
    <li> An Overview of Phyto-Garden Guide: What is Phyto-Garden Guide and what is it not?</li>
    <li> How to use Phyto-Garden Guide </li>
    <li> Methodology: Approach, Data Sources and Tools</li>
    <li> Problems and Solutions: Known Issues, Challenges, and Solutions</li>
    <li> Acknowledgements</li>
</ol>

## A Brief Introduction: What is phytoremediation and why should I plant a Phyto-Garden?

Phytoremediation refers to the ability of living plants and micro-organisms to de-contaminate the environment through bioaccumulation, whereby the absorb the toxin and lock it in place, or one or more other natural phytoremediation processes. It is a highly effective, cost-efficient, and achievable solution to many of the environmental issues faced today. And best of all, it is an option readily available to anyone with access to a garden, large or small. 

I first began researching the ability of living plants to purify soil, air, and water of toxic pollutants after testing the well-water at our 163 year-old farmhouse in scenic, rural Central New York. I was shocked to learn that not only was there too many bacteria to count, but there was a substantial amount of lead in our water, and no amount of lead is safe [<https://www.who.int/news-room/fact-sheets/detail/lead-poisoning-and-health>]. Before seeing the test results, I had never considered the impact of the lead paint peeling off our barn with every rain, or the leaded-gasoline particles remaining from pre-1975 automobiles, perpetually being kicked back up into the air we breathe and washing into the water we drink.

Already a passionate native plant gardener, when I came across the results of a Swedish phytofiltration study whereby aquatic moss removed 82% of arsenic from polluted water within only one hour [<https://www.sciencedirect.com/science/article/abs/pii/S026974911731206X>]. These impressive results empowered me to create a targeted and strategic approach to remediating my personal environmental concerns, further energizing my passion for gardening. The result is Phyto-Garden Guide, a gardener's first step toward harnessing the highly advanced, effective and sustainable technology of plants to address the environmental concerns of today and ensuring a healthier tomorrow. 


## An Overview of Phyto-Garden Guide: What is Phyto-Garden Guide and what is it not?

The purpose of Phyto-Garden Guide is to recommend commercially available plants for an everyday Phyto-Garden. It is a gardener's first step toward harnessing the highly advanced, effective and sustainable technology of plants to create a cleaner and healthier environment. It is not a substitute for expert advice, such as your extension office can provide, especially if you have serious concerns about safety and environmental hazards. 

**While Phyto-Garden Guide draws on published research and literature, it is important to note that it makes inferences as well. The primary inference drawn by Phyto-Garden Guide is that plants in the same genus have the same phytoremediation abilities.** Because unique plant species number in the hundreds of thousands, with even more varieties, only a fraction of known species will ever be studied. Furthermore, not all of the species studied by scientists are commercially available, nor will they all be suitable for your site based on their light, water, and soil requirements. By infering that plants in the same genus have the same phytoremediaton properties, Phyto-Garden Guide is able to recommend far more commercially available species with the potential to thrive in your garden. **While this is largely a reasonable assumption, it is not always the case. Therefore, Phyto-Garden Guide distinguishes when a particular species is recommended because it is known to have phytoremediation abilities, or when it is recommended because of its genus.** 


## How to Use Phyto-Garden Guide


## Methodology: Approach, Data Sources and Tools

The sea of plant-related research is vast and so Phyto-Garden Guide makes good use of the species lists Eric Fuselier of Wild Ones thoughtfully compiled based on his review of published research and literature [<https://wildones.org/phytoremediation-with-eric-fuselier/>]. Using *regex* and an extract from the USDA PLANTS database, I parsed, sorted and analyzed the PDF-format lists in *Python* [<https://plants.usda.gov/home/downloads>].

The lists of plants species and genera were then cross-referenced against the 2019 Prairie Moon Nursery Cultural Guide & Pricing Excel file to determine commercially available species using *SQL and Python* [<https://<www.prairiemoon.com/blog/resources-and-information>].

Finally, *Tableau* was utilized to neatly order the data and make recommendations based on site-types and pollutants. Additionally, EPA-widgets were imbedded to allow the user to explore information about their environment and EPA clean-up sites near them [<https://www.epa.gov/enviro/widgets#other>]. 


## Problems and Solutions: Known Issues, Challenges, and Solutions

First things first, I had to find my way to Phyto-Garden Guide or it had to find me. Before Phyto-Garden Guide there was Proto-Garden Guide, a pared down version of They're All Sisters Garden Guide, the food forest and habitat restoration desk-reference of my dreams. 

While there were seemingly infinite plant-related databases out there, they all lacked the usability functions I desired. The information was apparently all there in databases such as as USDA PLANTS, the Ladybird Johnson Wildflower Center Native Plants Database, Plants for a Future, and many others, but clunky and cumbersome from my perspective as a data-driven gardener. Not to mention, they simply weren't geared toward commercial availability. 

In the midst of my garden guide dilemma, I came across the concept of phytoremediation. Blown away by the arsenic-devouring aquatic moss and the urgency I felt to purify my own environment, I was immediately drawn to the subject. While so many of the wonderful gardening resources out there provide information about pollinators and wildlife (yay pollinators and wildlife!), I realized I had never once come across a phytoremediation section in any of them. In fact, it was only after weeks of researching the topic that I came across the phytoremediation database at www.steviefamulari.net which, once again, lacked the usability I sought. 

Upon deciding to build a Phyto-Garden Guide, I had to figure out how to make the most of the resources available to me in the shortest amount of time. For all the plant databases out there, very little was downloadable and I couldn't find any with so much as an API. The USDA PLANTS Database was the only downloadable content I found, and it was essentially a list of scientific and common names rather than the voluminous extract of usefule information I had hoped for. However, the comprehensive list of scientific plants names still proved useful when using regex to comb the PDF lists, which didn't parse as neatly as I had hoped. 

Once I had that data parsed and cross-referenced for commercial availability, I had to figure out how to make it useful to an everyday gardener. I performed several layers of analysis, sorting and reorganizing to create the most useful views of the data and add the most value. After I loaded the data into Tableau for analysis, it became clear the Python-portion wasn't "done" after all, and it was back to Jupyter Notebooks. 

Experimenting with the data in Tableau helped provide direction to my second round in Python, and I had a much clearer idea of what I needed to achieve and what view of the data would actually be useful for a garden guide dashboard. After importing the data into Tableau for the second time, I was far more confident in my analysis and the value-added, and from there on out it was mostly just time and elbow-grease to format and organize everything properly. 


## Acknowledgements

First and foremost, I would like to thank Mars and Ranch, my loyal greyhounds and full time supervisors. I truly couldn't have done it without their very close, very thorough supervision.


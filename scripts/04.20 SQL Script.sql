SELECT *
FROM phyto_species;


SELECT pg.genera AS genus, pg.genus_species AS species, pg.common_name, 
		genus_air, genus_cd, genus_chlor, genus_cr, genus_cu, genus_ni, genus_pb,
		genus_pesticides, genus_petrol, genus_zn,
		CASE WHEN ps.species IS NOT NULL THEN
			concat(ps.air,ps.cd, ps.chlor, ps.cr, ps.cu, ps.ni, ps.pb, ps.pesticides, ps.petrol, ps.zn) END AS species_known_uses
FROM pm_genera AS pg LEFT JOIN phyto_species AS ps ON pg.genus_species = ps.species

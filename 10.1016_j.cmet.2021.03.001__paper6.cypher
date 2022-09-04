// create structure nodes if not exist

MERGE(n:Structure {
    allen_id:315
    ,name: "Isocortex"
    ,acronym: "Isocortex"
    ,is_allen_strucutre : "/997/8/567/688/695/315/"
});




MERGE(n:Structure {
    allen_id:451
    ,name: "Basolateral amygdalae nucleus ventral part"
    ,acronym: "BLAv"
    ,is_allen_strucutre : "/997/8/567/688/703/295/451/"
});



MERGE(n:Structure {
    allen_id:"FALSE"
    ,name: "Basolateral amygdalar nucleus ventrolateral part"
    ,acronym: "BLAvl"
    ,is_allen_strucutre : "FALSE"
});


MERGE(n:Structure {
    allen_id:"FALSE"
    ,name: "Anterior insular cortex, posterior part"
    ,acronym: "aICp"
    ,is_allen_strucutre : "FALSE"
});


MERGE(n:Structure {
    allen_id:"FALSE"
    ,name: "Anterior insular cortex, posterior part, layer 2/3"
    ,acronym: "aICp23"
    ,is_allen_strucutre : "FALSE"
});



MERGE(n:Structure {
    allen_id:" 551"
    ,name: "Central amygdalar nucleus, lateral part"
    ,acronym: "CEA"
    ,is_allen_strucutre : "/997/8/567/623/477/278/536/551"
});

MERGE(n:Structure {
    allen_id:"536"
    ,name: "Central amygdalar nucleus"
    ,acronym: "CEA"
    ,is_allen_strucutre : "/997/8/567/623/477/278/536/"
});





// create behavior if not exist


MERGE(n:Behavior {
    name: "conditioned overconsumption"
});

// Neuron node


// Create neuron nodes

WITH     "10.1016/j.cmet.2021.03.001"     AS doi
        ,"Stern et al. (2021))" AS reference
        ,"mus musculus"     AS species
        ,"both"                  AS sex
	,"8-20 weeks"    AS     age
CREATE   (:Neuron {local_id:1, doi:doi, reference:reference, cell_type:"glutamatergic", molecular_marker: "CAMKIIa", species:species, sex:sex, age:age, strain: "C57BL/6J"})

        ,(:Neuron {local_id:2, doi:doi, reference:reference, cell_type:"unspecific", molecular_marker: "Nos1", species:species, sex:sex, age:age, strain: "Sst-Cre"})

        ,(:Neuron {local_id:3, doi:doi, reference:reference, cell_type:"glutamatergic", molecular_marker: "CAMKIIa", species:species, sex:sex, age:age, strain: "C57BL/6J"})

        ,(:Neuron {local_id:4, doi:doi, reference:reference, cell_type:"glutamatergic", molecular_marker:"Nos1, vGlut1", species:species, sex:sex, age:age, strain: "Nos1-Cre"})


	,(:Neuron {local_id:5, doi:doi, reference:reference, cell_type:"unspecific", molecular_marker: "Nos1", species:species, sex:sex, age:age, strain: "Pkcd-Cre"})

	,(:Neuron {local_id:6, doi:doi, reference:reference, cell_type:"GABAergic", molecular_marker: "FALSE", species:species, sex:sex, age:age, strain: "C57BL/6J"})

	,(:Neuron {local_id:7, doi:doi, reference:reference, cell_type:"unspecific", molecular_marker: "FALSE", species:species, sex:sex, age:age, strain: "Nos1-Cre"})

	,(:Neuron {local_id:8, doi:doi, reference:reference, cell_type:"GABAergic", molecular_marker: "protein kinase C delta", species:species, sex:sex, age:age, strain:"Pkcd-Cre"})

	,(:Neuron {local_id:9, doi:doi, reference:reference, cell_type:"unspecific", molecular_marker: "protein kinase C delta", species:species, sex:sex, age:age, strain:"Nos1-Cre"})

	,(:Neuron {local_id:10, doi:doi, reference:reference, cell_type:"GABAergic", molecular_marker: "SST", species:species, sex:sex, age:age, strain:"Nos1-Cre"})

	,(:Neuron {local_id:11, doi:doi, reference:reference, cell_type:"unspecific", molecular_marker: "FALSE", species:species, sex:sex, age:age, strain:"C57BL/6J"})
;






MATCH
  (a:Neuron),
  (b:Structure)
WHERE a.doi = "10.1016/j.cmet.2021.03.001" AND a.local_id = 1 AND b.name = "Anterior insular cortex, posterior part"
CREATE (a)-[r:BELONGS_TO]->(b);



MATCH
  (a:Neuron),
  (b:Structure)
WHERE a.doi = "10.1016/j.cmet.2021.03.001" AND a.local_id = 2 AND b.name = "Anterior insular cortex, posterior part"
CREATE (a)-[r:BELONGS_TO]->(b);



MATCH
  (a:Neuron),
  (b:Structure)
WHERE a.doi = "10.1016/j.cmet.2021.03.001" AND a.local_id = 5 AND b.name = "Anterior insular cortex, posterior part"
CREATE (a)-[r:BELONGS_TO]->(b);


MATCH
  (a:Neuron),
  (b:Structure)
WHERE a.doi = "10.1016/j.cmet.2021.03.001" AND a.local_id = 7 AND b.name = "Central amygdalar nucleus, lateral part"
CREATE (a)-[r:BELONGS_TO]->(b);



MATCH
  (a:Neuron),
  (b:Structure)
WHERE a.doi = "10.1016/j.cmet.2021.03.001" AND a.local_id = 9 AND b.name = "Central amygdalar nucleus"
CREATE (a)-[r:BELONGS_TO]->(b);


MATCH
  (a:Neuron),
  (b:Structure)
WHERE a.doi = "10.1016/j.cmet.2021.03.001" AND a.local_id = 10 AND b.name = "Central amygdalar nucleus"
CREATE (a)-[r:BELONGS_TO]->(b);


MATCH
  (a:Neuron),
  (b:Structure)
WHERE a.doi = "10.1016/j.cmet.2021.03.001" AND a.local_id = 8 AND b.name = "Central amygdalar nucleus"
CREATE (a)-[r:BELONGS_TO]->(b);

MATCH
  (a:Neuron),
  (b:Structure)
WHERE a.doi = "10.1016/j.cmet.2021.03.001" AND a.local_id = 5 AND b.name = "Anterior insular cortex, posterior part"
CREATE (a)-[r:BELONGS_TO]->(b);



MATCH
  (a:Neuron),
  (b:Structure)
WHERE a.doi = "10.1016/j.cmet.2021.03.001" AND a.local_id = 11 AND b.name = "Central amygdalar nucleus"
CREATE (a)-[r:BELONGS_TO]->(b);


MATCH
  (a:Neuron),
  (b:Structure)
WHERE a.doi = "10.1016/j.cmet.2021.03.001" AND a.local_id = 6 AND b.name = "Basolateral amygdalar nucleus ventrolateral part"
CREATE (a)-[r:BELONGS_TO]->(b);


// Create projection edges


MATCH
  (a:Neuron),
  (b:Neuron)
WHERE a.doi = "10.1016/j.cmet.2021.03.001" AND a.local_id = 2 AND b.doi = "10.1016/j.cmet.2021.03.001" AND b.local_id = 10
CREATE (a)-[r:projects_to]->(b);


MATCH
  (a:Neuron),
  (b:Neuron)
WHERE a.doi = "10.1016/j.cmet.2021.03.001" AND a.local_id = 5 AND b.doi = "10.1016/j.cmet.2021.03.001" AND b.local_id = 8
CREATE (a)-[r:projects_to]->(b);


MATCH
  (a:Neuron),
  (b:Neuron)
WHERE a.doi = "10.1016/j.cmet.2021.03.001" AND a.local_id = 4 AND b.doi = "10.1016/j.cmet.2021.03.001" AND b.local_id = 7
CREATE (a)-[r:projects_to]->(b);

MATCH
  (a:Neuron),
  (b:Neuron)
WHERE a.doi = "10.1016/j.cmet.2021.03.001" AND a.local_id = 3 AND b.doi = "10.1016/j.cmet.2021.03.001" AND b.local_id = 6
CREATE (a)-[r:projects_to]->(b);

MATCH
  (a:Neuron),
  (b:Neuron)
WHERE a.doi = "10.1016/j.cmet.2021.03.001" AND a.local_id = 4 AND b.doi = "10.1016/j.cmet.2021.03.001" AND b.local_id = 9
CREATE (a)-[r:inhibits]->(b);


// Create neuron to behavior edges


MATCH
  (a:Neuron),
  (b:Behavior)
WHERE a.doi = "10.1016/j.cmet.2021.03.001" AND a.cell_type = "glutamatergic" AND a.local_id = 4 AND b.name = "conditioned overconsumption"
CREATE (b)-[r:activates]->(a);

MATCH
  (a:Neuron),
  (b:Behavior)
WHERE a.doi = "10.1016/j.cmet.2021.03.001" AND a.cell_type = "glutamatergic" AND a.local_id = 4 AND b.name = "conditioned overconsumption"
CREATE (a)-[r:necessary_for]->(b);


///// create structure to structure production


MATCH
  (a:Structure),
  (b:Structure)
WHERE a.acronym = "aICp"  AND b.acronym  = "Isocortex"
CREATE (a)-[r:belongs_to]->(b);

MATCH
  (a:Structure),
  (b:Structure)
WHERE a.acronym = "BLAv"  AND b.acronym = "BLAvl"
CREATE (b)-[r:belongs_to]->(a);

MATCH
  (a:Structure),
  (b:Structure)
WHERE a.name = "Central amygdalar nucleus, lateral part"  AND b.name = "Central amygdalar nucleus"
CREATE (a)-[r:belongs_to]->(b);

MATCH
  (a:Structure),
  (b:Structure)
WHERE a.name = "Anterior insular cortex, posterior part, layer 2/3"  AND b.name = "Anterior insular cortex, posterior part"
CREATE (a)-[r:belongs_to]->(b);

MATCH
  (a:Structure),
  (b:Structure)
WHERE a.name = "Isocortex"  AND b.name = "Anterior insular cortex, posterior part"
CREATE (b)-[r:belongs_to]->(a);

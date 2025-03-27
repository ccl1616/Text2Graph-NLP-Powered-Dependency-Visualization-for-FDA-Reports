// Create constraints
CREATE CONSTRAINT IF NOT EXISTS FOR (w:Token) REQUIRE w.id IS UNIQUE;

// Create tokens for sentence 1
CREATE (t0:Token {id: 0, text: 'INFORMATION', pos: 'PROPN', position: 0}),
       (t1:Token {id: 1, text: 'RECEIVED', pos: 'PROPN', position: 1}),
       (t2:Token {id: 2, text: 'BY', pos: 'ADP', position: 2}),
       (t3:Token {id: 3, text: 'MEDTRONIC', pos: 'PROPN', position: 3}),
       (t4:Token {id: 4, text: 'INDICATED', pos: 'VERB', position: 4}),
       (t5:Token {id: 5, text: 'THAT', pos: 'SCONJ', position: 5}),
       (t6:Token {id: 6, text: ',', pos: 'PUNCT', position: 6}),
       (t7:Token {id: 7, text: 'CUSTOMER', pos: 'PROPN', position: 7}),
       (t8:Token {id: 8, text: 'PASSED', pos: 'VERB', position: 8}),
       (t9:Token {id: 9, text: 'AWAY', pos: 'ADV', position: 9}),
       (t10:Token {id: 10, text: 'AT', pos: 'ADP', position: 10}),
       (t11:Token {id: 11, text: 'HOME', pos: 'PROPN', position: 11}),
       (t12:Token {id: 12, text: 'ON', pos: 'PROPN', position: 12}),
       (t13:Token {id: 13, text: '(', pos: 'PUNCT', position: 13}),
       (t14:Token {id: 14, text: 'B)(6', pos: 'NOUN', position: 14}),
       (t15:Token {id: 15, text: ')', pos: 'PUNCT', position: 15}),
       (t16:Token {id: 16, text: '2022', pos: 'NUM', position: 16}),
       (t17:Token {id: 17, text: '.', pos: 'PUNCT', position: 17})
WITH [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17] as nodes
// Create dependency relationships for sentence 1
MATCH (t1:Token {id: 0}), (t2:Token {id: 1}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 1}), (t2:Token {id: 4}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 2}), (t2:Token {id: 3}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 3}), (t2:Token {id: 1}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 5}), (t2:Token {id: 8}) WITH t1, t2 CREATE (t1)-[:mark]->(t2);
MATCH (t1:Token {id: 6}), (t2:Token {id: 8}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 7}), (t2:Token {id: 8}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 8}), (t2:Token {id: 4}) WITH t1, t2 CREATE (t1)-[:ccomp]->(t2);
MATCH (t1:Token {id: 9}), (t2:Token {id: 8}) WITH t1, t2 CREATE (t1)-[:advmod]->(t2);
MATCH (t1:Token {id: 10}), (t2:Token {id: 8}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 11}), (t2:Token {id: 10}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 12}), (t2:Token {id: 8}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 13}), (t2:Token {id: 12}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 14}), (t2:Token {id: 12}) WITH t1, t2 CREATE (t1)-[:appos]->(t2);
MATCH (t1:Token {id: 15}), (t2:Token {id: 16}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 16}), (t2:Token {id: 12}) WITH t1, t2 CREATE (t1)-[:appos]->(t2);
MATCH (t1:Token {id: 17}), (t2:Token {id: 4}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 2
CREATE (t18:Token {id: 18, text: 'THE', pos: 'DET', position: 0}),
       (t19:Token {id: 19, text: 'CUSTOMER', pos: 'PROPN', position: 1}),
       (t20:Token {id: 20, text: 'WAS', pos: 'AUX', position: 2}),
       (t21:Token {id: 21, text: 'NOT', pos: 'PART', position: 3}),
       (t22:Token {id: 22, text: 'ADMITTED', pos: 'VERB', position: 4}),
       (t23:Token {id: 23, text: 'TO', pos: 'ADP', position: 5}),
       (t24:Token {id: 24, text: 'A', pos: 'DET', position: 6}),
       (t25:Token {id: 25, text: 'HOSPITAL', pos: 'NOUN', position: 7}),
       (t26:Token {id: 26, text: 'PRIOR', pos: 'NOUN', position: 8}),
       (t27:Token {id: 27, text: 'TO', pos: 'ADP', position: 9}),
       (t28:Token {id: 28, text: 'THE', pos: 'DET', position: 10}),
       (t29:Token {id: 29, text: 'REPORTED', pos: 'PROPN', position: 11}),
       (t30:Token {id: 30, text: 'INCIDENT', pos: 'PROPN', position: 12}),
       (t31:Token {id: 31, text: '.', pos: 'PUNCT', position: 13})
WITH [t18, t19, t20, t21, t22, t23, t24, t25, t26, t27, t28, t29, t30, t31] as nodes
// Create dependency relationships for sentence 2
MATCH (t1:Token {id: 18}), (t2:Token {id: 19}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 19}), (t2:Token {id: 22}) WITH t1, t2 CREATE (t1)-[:nsubjpass]->(t2);
MATCH (t1:Token {id: 20}), (t2:Token {id: 22}) WITH t1, t2 CREATE (t1)-[:auxpass]->(t2);
MATCH (t1:Token {id: 21}), (t2:Token {id: 22}) WITH t1, t2 CREATE (t1)-[:neg]->(t2);
MATCH (t1:Token {id: 23}), (t2:Token {id: 22}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 24}), (t2:Token {id: 26}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 25}), (t2:Token {id: 26}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 26}), (t2:Token {id: 23}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 27}), (t2:Token {id: 26}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 28}), (t2:Token {id: 30}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 29}), (t2:Token {id: 30}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 30}), (t2:Token {id: 27}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 31}), (t2:Token {id: 22}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 3
CREATE (t32:Token {id: 32, text: 'THE', pos: 'DET', position: 0}),
       (t33:Token {id: 33, text: 'CUSTOMER', pos: 'PROPN', position: 1}),
       (t34:Token {id: 34, text: 'PASSED', pos: 'VERB', position: 2}),
       (t35:Token {id: 35, text: 'AWAY', pos: 'ADV', position: 3}),
       (t36:Token {id: 36, text: 'IN', pos: 'ADP', position: 4}),
       (t37:Token {id: 37, text: 'SLEEP', pos: 'PROPN', position: 5}),
       (t38:Token {id: 38, text: '.', pos: 'PUNCT', position: 6})
WITH [t32, t33, t34, t35, t36, t37, t38] as nodes
// Create dependency relationships for sentence 3
MATCH (t1:Token {id: 32}), (t2:Token {id: 33}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 33}), (t2:Token {id: 34}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 35}), (t2:Token {id: 34}) WITH t1, t2 CREATE (t1)-[:advmod]->(t2);
MATCH (t1:Token {id: 36}), (t2:Token {id: 34}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 37}), (t2:Token {id: 36}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 38}), (t2:Token {id: 34}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 4
CREATE (t39:Token {id: 39, text: 'THE', pos: 'DET', position: 0}),
       (t40:Token {id: 40, text: 'CAUSE', pos: 'PROPN', position: 1}),
       (t41:Token {id: 41, text: 'FOR', pos: 'ADP', position: 2}),
       (t42:Token {id: 42, text: 'DEATH', pos: 'NOUN', position: 3}),
       (t43:Token {id: 43, text: 'AND', pos: 'CCONJ', position: 4}),
       (t44:Token {id: 44, text: 'CUSTOMERøS', pos: 'VERB', position: 5}),
       (t45:Token {id: 45, text: 'BLOOD', pos: 'NOUN', position: 6}),
       (t46:Token {id: 46, text: 'GLUCOSE', pos: 'PROPN', position: 7}),
       (t47:Token {id: 47, text: 'VALUE', pos: 'NOUN', position: 8}),
       (t48:Token {id: 48, text: 'WAS', pos: 'AUX', position: 9}),
       (t49:Token {id: 49, text: 'UNKNOWN', pos: 'ADJ', position: 10}),
       (t50:Token {id: 50, text: '.', pos: 'PUNCT', position: 11})
WITH [t39, t40, t41, t42, t43, t44, t45, t46, t47, t48, t49, t50] as nodes
// Create dependency relationships for sentence 4
MATCH (t1:Token {id: 39}), (t2:Token {id: 40}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 41}), (t2:Token {id: 40}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 42}), (t2:Token {id: 41}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 43}), (t2:Token {id: 40}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 44}), (t2:Token {id: 40}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 45}), (t2:Token {id: 47}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 46}), (t2:Token {id: 47}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 47}), (t2:Token {id: 48}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 48}), (t2:Token {id: 44}) WITH t1, t2 CREATE (t1)-[:ccomp]->(t2);
MATCH (t1:Token {id: 49}), (t2:Token {id: 48}) WITH t1, t2 CREATE (t1)-[:acomp]->(t2);
MATCH (t1:Token {id: 50}), (t2:Token {id: 40}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 5
CREATE (t51:Token {id: 51, text: 'THE', pos: 'DET', position: 0}),
       (t52:Token {id: 52, text: 'CUSTOMER', pos: 'PROPN', position: 1}),
       (t53:Token {id: 53, text: 'WAS', pos: 'AUX', position: 2}),
       (t54:Token {id: 54, text: 'WEARING', pos: 'VERB', position: 3}),
       (t55:Token {id: 55, text: 'THE', pos: 'DET', position: 4}),
       (t56:Token {id: 56, text: 'INSULIN', pos: 'NOUN', position: 5}),
       (t57:Token {id: 57, text: 'PUMP', pos: 'PROPN', position: 6})
WITH [t51, t52, t53, t54, t55, t56, t57] as nodes
// Create dependency relationships for sentence 5
MATCH (t1:Token {id: 51}), (t2:Token {id: 52}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 52}), (t2:Token {id: 54}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 53}), (t2:Token {id: 54}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 55}), (t2:Token {id: 57}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 56}), (t2:Token {id: 57}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 57}), (t2:Token {id: 54}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);

// Create tokens for sentence 6
CREATE (t58:Token {id: 58, text: 'AT', pos: 'ADP', position: 0}),
       (t59:Token {id: 59, text: 'THE', pos: 'DET', position: 1}),
       (t60:Token {id: 60, text: 'TIME', pos: 'PROPN', position: 2}),
       (t61:Token {id: 61, text: 'OF', pos: 'ADP', position: 3}),
       (t62:Token {id: 62, text: 'DEATH', pos: 'NOUN', position: 4}),
       (t63:Token {id: 63, text: '.', pos: 'PUNCT', position: 5})
WITH [t58, t59, t60, t61, t62, t63] as nodes
// Create dependency relationships for sentence 6
MATCH (t1:Token {id: 59}), (t2:Token {id: 60}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 60}), (t2:Token {id: 58}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 61}), (t2:Token {id: 60}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 62}), (t2:Token {id: 61}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 63}), (t2:Token {id: 58}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 7
CREATE (t64:Token {id: 64, text: 'THE', pos: 'DET', position: 0}),
       (t65:Token {id: 65, text: 'CUSTOMER', pos: 'PROPN', position: 1}),
       (t66:Token {id: 66, text: 'WAS', pos: 'AUX', position: 2}),
       (t67:Token {id: 67, text: 'NOT', pos: 'PART', position: 3}),
       (t68:Token {id: 68, text: 'USING', pos: 'VERB', position: 4}),
       (t69:Token {id: 69, text: 'THE', pos: 'DET', position: 5}),
       (t70:Token {id: 70, text: 'SENSOR', pos: 'PROPN', position: 6}),
       (t71:Token {id: 71, text: '.', pos: 'PUNCT', position: 7})
WITH [t64, t65, t66, t67, t68, t69, t70, t71] as nodes
// Create dependency relationships for sentence 7
MATCH (t1:Token {id: 64}), (t2:Token {id: 65}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 65}), (t2:Token {id: 68}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 66}), (t2:Token {id: 68}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 67}), (t2:Token {id: 68}) WITH t1, t2 CREATE (t1)-[:neg]->(t2);
MATCH (t1:Token {id: 69}), (t2:Token {id: 70}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 70}), (t2:Token {id: 68}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 71}), (t2:Token {id: 68}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 8
CREATE (t72:Token {id: 72, text: 'THE', pos: 'DET', position: 0}),
       (t73:Token {id: 73, text: 'INSULIN', pos: 'PROPN', position: 1}),
       (t74:Token {id: 74, text: 'PUMP', pos: 'PROPN', position: 2}),
       (t75:Token {id: 75, text: 'WILL', pos: 'AUX', position: 3}),
       (t76:Token {id: 76, text: 'NOT', pos: 'PART', position: 4}),
       (t77:Token {id: 77, text: 'BE', pos: 'AUX', position: 5}),
       (t78:Token {id: 78, text: 'RETURNED', pos: 'PROPN', position: 6}),
       (t79:Token {id: 79, text: 'FOR', pos: 'ADP', position: 7}),
       (t80:Token {id: 80, text: 'ANALYSIS', pos: 'PROPN', position: 8}),
       (t81:Token {id: 81, text: '.', pos: 'PUNCT', position: 9})
WITH [t72, t73, t74, t75, t76, t77, t78, t79, t80, t81] as nodes
// Create dependency relationships for sentence 8
MATCH (t1:Token {id: 72}), (t2:Token {id: 74}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 73}), (t2:Token {id: 74}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 74}), (t2:Token {id: 77}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 75}), (t2:Token {id: 77}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 76}), (t2:Token {id: 77}) WITH t1, t2 CREATE (t1)-[:neg]->(t2);
MATCH (t1:Token {id: 78}), (t2:Token {id: 77}) WITH t1, t2 CREATE (t1)-[:attr]->(t2);
MATCH (t1:Token {id: 79}), (t2:Token {id: 78}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 80}), (t2:Token {id: 79}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 81}), (t2:Token {id: 77}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// This is end of schema.
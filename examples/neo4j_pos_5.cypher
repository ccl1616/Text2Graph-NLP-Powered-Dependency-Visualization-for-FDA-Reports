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

// Create tokens for sentence 9
CREATE (t82:Token {id: 82, text: 'CURRENTLY', pos: 'PROPN', position: 0}),
       (t83:Token {id: 83, text: 'IT', pos: 'PRON', position: 1}),
       (t84:Token {id: 84, text: 'IS', pos: 'AUX', position: 2}),
       (t85:Token {id: 85, text: 'UNKNOWN', pos: 'ADJ', position: 3}),
       (t86:Token {id: 86, text: 'WHETHER', pos: 'SCONJ', position: 4}),
       (t87:Token {id: 87, text: 'OR', pos: 'CCONJ', position: 5}),
       (t88:Token {id: 88, text: 'NOT', pos: 'PART', position: 6}),
       (t89:Token {id: 89, text: 'THE', pos: 'DET', position: 7}),
       (t90:Token {id: 90, text: 'DEVICE', pos: 'NOUN', position: 8}),
       (t91:Token {id: 91, text: 'MAY', pos: 'AUX', position: 9}),
       (t92:Token {id: 92, text: 'HAVE', pos: 'AUX', position: 10}),
       (t93:Token {id: 93, text: 'CAUSED', pos: 'VERB', position: 11}),
       (t94:Token {id: 94, text: 'OR', pos: 'CCONJ', position: 12}),
       (t95:Token {id: 95, text: 'CONTRIBUTED', pos: 'VERB', position: 13}),
       (t96:Token {id: 96, text: 'TO', pos: 'ADP', position: 14}),
       (t97:Token {id: 97, text: 'THE', pos: 'DET', position: 15}),
       (t98:Token {id: 98, text: 'EVENT', pos: 'NOUN', position: 16})
WITH [t82, t83, t84, t85, t86, t87, t88, t89, t90, t91, t92, t93, t94, t95, t96, t97, t98] as nodes
// Create dependency relationships for sentence 9
MATCH (t1:Token {id: 82}), (t2:Token {id: 84}) WITH t1, t2 CREATE (t1)-[:npadvmod]->(t2);
MATCH (t1:Token {id: 83}), (t2:Token {id: 84}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 85}), (t2:Token {id: 84}) WITH t1, t2 CREATE (t1)-[:acomp]->(t2);
MATCH (t1:Token {id: 86}), (t2:Token {id: 93}) WITH t1, t2 CREATE (t1)-[:mark]->(t2);
MATCH (t1:Token {id: 87}), (t2:Token {id: 86}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 88}), (t2:Token {id: 92}) WITH t1, t2 CREATE (t1)-[:neg]->(t2);
MATCH (t1:Token {id: 89}), (t2:Token {id: 90}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 90}), (t2:Token {id: 92}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 91}), (t2:Token {id: 92}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 92}), (t2:Token {id: 93}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 93}), (t2:Token {id: 84}) WITH t1, t2 CREATE (t1)-[:ccomp]->(t2);
MATCH (t1:Token {id: 94}), (t2:Token {id: 93}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 95}), (t2:Token {id: 93}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 96}), (t2:Token {id: 95}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 97}), (t2:Token {id: 98}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 98}), (t2:Token {id: 96}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);

// Create tokens for sentence 10
CREATE (t99:Token {id: 99, text: 'AS', pos: 'SCONJ', position: 0}),
       (t100:Token {id: 100, text: 'NO', pos: 'DET', position: 1}),
       (t101:Token {id: 101, text: 'PRODUCT', pos: 'NOUN', position: 2}),
       (t102:Token {id: 102, text: 'HAS', pos: 'AUX', position: 3}),
       (t103:Token {id: 103, text: 'BEEN', pos: 'AUX', position: 4}),
       (t104:Token {id: 104, text: 'RETURNED', pos: 'PROPN', position: 5}),
       (t105:Token {id: 105, text: '.', pos: 'PUNCT', position: 6})
WITH [t99, t100, t101, t102, t103, t104, t105] as nodes
// Create dependency relationships for sentence 10
MATCH (t1:Token {id: 99}), (t2:Token {id: 103}) WITH t1, t2 CREATE (t1)-[:mark]->(t2);
MATCH (t1:Token {id: 100}), (t2:Token {id: 101}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 101}), (t2:Token {id: 103}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 102}), (t2:Token {id: 103}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 104}), (t2:Token {id: 103}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 105}), (t2:Token {id: 103}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 11
CREATE (t106:Token {id: 106, text: 'NO', pos: 'DET', position: 0}),
       (t107:Token {id: 107, text: 'CONCLUSION', pos: 'NOUN', position: 1}),
       (t108:Token {id: 108, text: 'CAN', pos: 'AUX', position: 2}),
       (t109:Token {id: 109, text: 'BE', pos: 'AUX', position: 3}),
       (t110:Token {id: 110, text: 'DRAWN', pos: 'VERB', position: 4}),
       (t111:Token {id: 111, text: 'AT', pos: 'ADP', position: 5}),
       (t112:Token {id: 112, text: 'THIS', pos: 'DET', position: 6}),
       (t113:Token {id: 113, text: 'TIME', pos: 'NOUN', position: 7}),
       (t114:Token {id: 114, text: '.', pos: 'PUNCT', position: 8})
WITH [t106, t107, t108, t109, t110, t111, t112, t113, t114] as nodes
// Create dependency relationships for sentence 11
MATCH (t1:Token {id: 106}), (t2:Token {id: 107}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 107}), (t2:Token {id: 110}) WITH t1, t2 CREATE (t1)-[:nsubjpass]->(t2);
MATCH (t1:Token {id: 108}), (t2:Token {id: 110}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 109}), (t2:Token {id: 110}) WITH t1, t2 CREATE (t1)-[:auxpass]->(t2);
MATCH (t1:Token {id: 111}), (t2:Token {id: 110}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 112}), (t2:Token {id: 113}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 113}), (t2:Token {id: 110}) WITH t1, t2 CREATE (t1)-[:npadvmod]->(t2);
MATCH (t1:Token {id: 114}), (t2:Token {id: 110}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 12
CREATE (t115:Token {id: 115, text: 'WE', pos: 'PRON', position: 0}),
       (t116:Token {id: 116, text: 'THEREFORE', pos: 'ADV', position: 1}),
       (t117:Token {id: 117, text: 'CONSIDER', pos: 'VERB', position: 2}),
       (t118:Token {id: 118, text: 'THIS', pos: 'DET', position: 3}),
       (t119:Token {id: 119, text: 'REPORT', pos: 'NOUN', position: 4}),
       (t120:Token {id: 120, text: 'COMPLETE', pos: 'PROPN', position: 5}),
       (t121:Token {id: 121, text: 'TO', pos: 'ADP', position: 6}),
       (t122:Token {id: 122, text: 'THE', pos: 'DET', position: 7}),
       (t123:Token {id: 123, text: 'BEST', pos: 'NOUN', position: 8}),
       (t124:Token {id: 124, text: 'OF', pos: 'ADP', position: 9}),
       (t125:Token {id: 125, text: 'OUR', pos: 'PRON', position: 10}),
       (t126:Token {id: 126, text: 'KNOWLEDGE', pos: 'PROPN', position: 11}),
       (t127:Token {id: 127, text: '.', pos: 'PUNCT', position: 12})
WITH [t115, t116, t117, t118, t119, t120, t121, t122, t123, t124, t125, t126, t127] as nodes
// Create dependency relationships for sentence 12
MATCH (t1:Token {id: 115}), (t2:Token {id: 117}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 116}), (t2:Token {id: 117}) WITH t1, t2 CREATE (t1)-[:advmod]->(t2);
MATCH (t1:Token {id: 118}), (t2:Token {id: 119}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 119}), (t2:Token {id: 120}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 120}), (t2:Token {id: 117}) WITH t1, t2 CREATE (t1)-[:ccomp]->(t2);
MATCH (t1:Token {id: 121}), (t2:Token {id: 120}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 122}), (t2:Token {id: 123}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 123}), (t2:Token {id: 121}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 124}), (t2:Token {id: 123}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 125}), (t2:Token {id: 126}) WITH t1, t2 CREATE (t1)-[:poss]->(t2);
MATCH (t1:Token {id: 126}), (t2:Token {id: 124}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 127}), (t2:Token {id: 117}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 13
CREATE (t128:Token {id: 128, text: 'MEDTRONIC', pos: 'PROPN', position: 0}),
       (t129:Token {id: 129, text: ',', pos: 'PUNCT', position: 1}),
       (t130:Token {id: 130, text: 'INC', pos: 'PROPN', position: 2}),
       (t131:Token {id: 131, text: '.', pos: 'PROPN', position: 3}),
       (t132:Token {id: 132, text: '(', pos: 'PUNCT', position: 4}),
       (t133:Token {id: 133, text: 'MEDTRONIC', pos: 'PROPN', position: 5}),
       (t134:Token {id: 134, text: ')', pos: 'PUNCT', position: 6}),
       (t135:Token {id: 135, text: 'IS', pos: 'AUX', position: 7}),
       (t136:Token {id: 136, text: 'SUBMITTING', pos: 'VERB', position: 8}),
       (t137:Token {id: 137, text: 'THIS', pos: 'DET', position: 9}),
       (t138:Token {id: 138, text: 'REPORT', pos: 'NOUN', position: 10}),
       (t139:Token {id: 139, text: 'TO', pos: 'ADP', position: 11}),
       (t140:Token {id: 140, text: 'COMPLY', pos: 'PROPN', position: 12}),
       (t141:Token {id: 141, text: 'WITH', pos: 'ADP', position: 13}),
       (t142:Token {id: 142, text: '21', pos: 'NUM', position: 14}),
       (t143:Token {id: 143, text: 'C.F.R.', pos: 'PROPN', position: 15}),
       (t144:Token {id: 144, text: 'PART', pos: 'PROPN', position: 16}),
       (t145:Token {id: 145, text: '803', pos: 'NUM', position: 17}),
       (t146:Token {id: 146, text: ',', pos: 'PUNCT', position: 18}),
       (t147:Token {id: 147, text: 'THE', pos: 'DET', position: 19}),
       (t148:Token {id: 148, text: 'MEDICAL', pos: 'PROPN', position: 20}),
       (t149:Token {id: 149, text: 'DEVICE', pos: 'NOUN', position: 21}),
       (t150:Token {id: 150, text: 'REPORTING', pos: 'VERB', position: 22}),
       (t151:Token {id: 151, text: 'REGULATION', pos: 'NOUN', position: 23}),
       (t152:Token {id: 152, text: '.', pos: 'PUNCT', position: 24})
WITH [t128, t129, t130, t131, t132, t133, t134, t135, t136, t137, t138, t139, t140, t141, t142, t143, t144, t145, t146, t147, t148, t149, t150, t151, t152] as nodes
// Create dependency relationships for sentence 13
MATCH (t1:Token {id: 128}), (t2:Token {id: 136}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 129}), (t2:Token {id: 128}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 130}), (t2:Token {id: 128}) WITH t1, t2 CREATE (t1)-[:npadvmod]->(t2);
MATCH (t1:Token {id: 131}), (t2:Token {id: 128}) WITH t1, t2 CREATE (t1)-[:npadvmod]->(t2);
MATCH (t1:Token {id: 132}), (t2:Token {id: 131}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 133}), (t2:Token {id: 131}) WITH t1, t2 CREATE (t1)-[:appos]->(t2);
MATCH (t1:Token {id: 134}), (t2:Token {id: 131}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 135}), (t2:Token {id: 136}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 137}), (t2:Token {id: 138}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 138}), (t2:Token {id: 136}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 139}), (t2:Token {id: 136}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 140}), (t2:Token {id: 139}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 141}), (t2:Token {id: 136}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 142}), (t2:Token {id: 144}) WITH t1, t2 CREATE (t1)-[:nummod]->(t2);
MATCH (t1:Token {id: 143}), (t2:Token {id: 144}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 144}), (t2:Token {id: 141}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 145}), (t2:Token {id: 144}) WITH t1, t2 CREATE (t1)-[:nummod]->(t2);
MATCH (t1:Token {id: 146}), (t2:Token {id: 136}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 147}), (t2:Token {id: 149}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 148}), (t2:Token {id: 149}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 149}), (t2:Token {id: 136}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 150}), (t2:Token {id: 151}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 151}), (t2:Token {id: 149}) WITH t1, t2 CREATE (t1)-[:appos]->(t2);
MATCH (t1:Token {id: 152}), (t2:Token {id: 136}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 14
CREATE (t153:Token {id: 153, text: 'THIS', pos: 'DET', position: 0}),
       (t154:Token {id: 154, text: 'REPORT', pos: 'NOUN', position: 1}),
       (t155:Token {id: 155, text: 'IS', pos: 'AUX', position: 2}),
       (t156:Token {id: 156, text: 'BASED', pos: 'VERB', position: 3}),
       (t157:Token {id: 157, text: 'UPON', pos: 'PROPN', position: 4}),
       (t158:Token {id: 158, text: 'INFORMATION', pos: 'PROPN', position: 5}),
       (t159:Token {id: 159, text: 'OBTAINED', pos: 'VERB', position: 6}),
       (t160:Token {id: 160, text: 'BY', pos: 'PROPN', position: 7}),
       (t161:Token {id: 161, text: 'MEDTRONIC', pos: 'PROPN', position: 8}),
       (t162:Token {id: 162, text: ',', pos: 'PUNCT', position: 9}),
       (t163:Token {id: 163, text: 'WHICH', pos: 'PRON', position: 10}),
       (t164:Token {id: 164, text: 'THE', pos: 'DET', position: 11}),
       (t165:Token {id: 165, text: 'COMPANY', pos: 'NOUN', position: 12}),
       (t166:Token {id: 166, text: 'MAY', pos: 'AUX', position: 13}),
       (t167:Token {id: 167, text: 'NOT', pos: 'PART', position: 14}),
       (t168:Token {id: 168, text: 'HAVE', pos: 'AUX', position: 15}),
       (t169:Token {id: 169, text: 'BEEN', pos: 'AUX', position: 16}),
       (t170:Token {id: 170, text: 'ABLE', pos: 'NOUN', position: 17}),
       (t171:Token {id: 171, text: 'TO', pos: 'ADP', position: 18}),
       (t172:Token {id: 172, text: 'FULLY', pos: 'ADV', position: 19}),
       (t173:Token {id: 173, text: 'INVESTIGATE', pos: 'NOUN', position: 20}),
       (t174:Token {id: 174, text: 'OR', pos: 'CCONJ', position: 21}),
       (t175:Token {id: 175, text: 'VERIFY', pos: 'PROPN', position: 22}),
       (t176:Token {id: 176, text: 'PRIOR', pos: 'NOUN', position: 23}),
       (t177:Token {id: 177, text: 'TO', pos: 'ADP', position: 24}),
       (t178:Token {id: 178, text: 'THE', pos: 'DET', position: 25}),
       (t179:Token {id: 179, text: 'DATE', pos: 'NOUN', position: 26}),
       (t180:Token {id: 180, text: 'THE', pos: 'DET', position: 27}),
       (t181:Token {id: 181, text: 'REPORT', pos: 'PROPN', position: 28}),
       (t182:Token {id: 182, text: 'WAS', pos: 'AUX', position: 29}),
       (t183:Token {id: 183, text: 'REQUIRED', pos: 'VERB', position: 30}),
       (t184:Token {id: 184, text: 'BY', pos: 'ADP', position: 31}),
       (t185:Token {id: 185, text: 'THE', pos: 'DET', position: 32}),
       (t186:Token {id: 186, text: 'FDA', pos: 'PROPN', position: 33}),
       (t187:Token {id: 187, text: '.', pos: 'PUNCT', position: 34})
WITH [t153, t154, t155, t156, t157, t158, t159, t160, t161, t162, t163, t164, t165, t166, t167, t168, t169, t170, t171, t172, t173, t174, t175, t176, t177, t178, t179, t180, t181, t182, t183, t184, t185, t186, t187] as nodes
// Create dependency relationships for sentence 14
MATCH (t1:Token {id: 153}), (t2:Token {id: 154}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 154}), (t2:Token {id: 155}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 156}), (t2:Token {id: 155}) WITH t1, t2 CREATE (t1)-[:acomp]->(t2);
MATCH (t1:Token {id: 157}), (t2:Token {id: 158}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 158}), (t2:Token {id: 159}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 159}), (t2:Token {id: 156}) WITH t1, t2 CREATE (t1)-[:ccomp]->(t2);
MATCH (t1:Token {id: 160}), (t2:Token {id: 161}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 161}), (t2:Token {id: 159}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 162}), (t2:Token {id: 161}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 163}), (t2:Token {id: 169}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 164}), (t2:Token {id: 165}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 165}), (t2:Token {id: 169}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 166}), (t2:Token {id: 169}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 167}), (t2:Token {id: 169}) WITH t1, t2 CREATE (t1)-[:neg]->(t2);
MATCH (t1:Token {id: 168}), (t2:Token {id: 169}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 169}), (t2:Token {id: 161}) WITH t1, t2 CREATE (t1)-[:relcl]->(t2);
MATCH (t1:Token {id: 170}), (t2:Token {id: 169}) WITH t1, t2 CREATE (t1)-[:acomp]->(t2);
MATCH (t1:Token {id: 171}), (t2:Token {id: 169}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 172}), (t2:Token {id: 173}) WITH t1, t2 CREATE (t1)-[:advmod]->(t2);
MATCH (t1:Token {id: 173}), (t2:Token {id: 171}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 174}), (t2:Token {id: 173}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 175}), (t2:Token {id: 176}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 176}), (t2:Token {id: 173}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 177}), (t2:Token {id: 169}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 178}), (t2:Token {id: 179}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 179}), (t2:Token {id: 177}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 180}), (t2:Token {id: 181}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 181}), (t2:Token {id: 183}) WITH t1, t2 CREATE (t1)-[:nsubjpass]->(t2);
MATCH (t1:Token {id: 182}), (t2:Token {id: 183}) WITH t1, t2 CREATE (t1)-[:auxpass]->(t2);
MATCH (t1:Token {id: 183}), (t2:Token {id: 179}) WITH t1, t2 CREATE (t1)-[:relcl]->(t2);
MATCH (t1:Token {id: 184}), (t2:Token {id: 183}) WITH t1, t2 CREATE (t1)-[:agent]->(t2);
MATCH (t1:Token {id: 185}), (t2:Token {id: 186}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 186}), (t2:Token {id: 184}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 187}), (t2:Token {id: 155}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 15
CREATE (t188:Token {id: 188, text: 'MEDTRONIC', pos: 'PROPN', position: 0}),
       (t189:Token {id: 189, text: 'HAS', pos: 'AUX', position: 1}),
       (t190:Token {id: 190, text: 'MADE', pos: 'VERB', position: 2}),
       (t191:Token {id: 191, text: 'REASONABLE', pos: 'ADJ', position: 3}),
       (t192:Token {id: 192, text: 'EFFORTS', pos: 'NOUN', position: 4}),
       (t193:Token {id: 193, text: 'TO', pos: 'PART', position: 5}),
       (t194:Token {id: 194, text: 'OBTAIN', pos: 'VERB', position: 6}),
       (t195:Token {id: 195, text: 'MORE', pos: 'ADJ', position: 7}),
       (t196:Token {id: 196, text: 'COMPLETE', pos: 'PROPN', position: 8}),
       (t197:Token {id: 197, text: 'INFORMATION', pos: 'NOUN', position: 9}),
       (t198:Token {id: 198, text: 'IN', pos: 'ADP', position: 10}),
       (t199:Token {id: 199, text: 'THE', pos: 'DET', position: 11}),
       (t200:Token {id: 200, text: 'TIME', pos: 'PROPN', position: 12}),
       (t201:Token {id: 201, text: 'ALLOTTED', pos: 'PROPN', position: 13}),
       (t202:Token {id: 202, text: 'AND', pos: 'CCONJ', position: 14}),
       (t203:Token {id: 203, text: 'HAS', pos: 'AUX', position: 15}),
       (t204:Token {id: 204, text: 'PROVIDED', pos: 'VERB', position: 16}),
       (t205:Token {id: 205, text: 'AS', pos: 'ADP', position: 17}),
       (t206:Token {id: 206, text: 'MUCH', pos: 'PROPN', position: 18}),
       (t207:Token {id: 207, text: 'INFORMATION', pos: 'NOUN', position: 19}),
       (t208:Token {id: 208, text: 'AS', pos: 'SCONJ', position: 20}),
       (t209:Token {id: 209, text: 'IS', pos: 'AUX', position: 21}),
       (t210:Token {id: 210, text: 'AVAILABLE', pos: 'NOUN', position: 22}),
       (t211:Token {id: 211, text: 'TO', pos: 'ADP', position: 23}),
       (t212:Token {id: 212, text: 'THE', pos: 'DET', position: 24}),
       (t213:Token {id: 213, text: 'COMPANY', pos: 'PROPN', position: 25}),
       (t214:Token {id: 214, text: 'AS', pos: 'ADP', position: 26}),
       (t215:Token {id: 215, text: 'OF', pos: 'ADP', position: 27}),
       (t216:Token {id: 216, text: 'THE', pos: 'DET', position: 28}),
       (t217:Token {id: 217, text: 'SUBMISSION', pos: 'NOUN', position: 29}),
       (t218:Token {id: 218, text: 'DATE', pos: 'NOUN', position: 30}),
       (t219:Token {id: 219, text: 'THIS', pos: 'DET', position: 31}),
       (t220:Token {id: 220, text: 'REPORT', pos: 'NOUN', position: 32}),
       (t221:Token {id: 221, text: '.', pos: 'PUNCT', position: 33})
WITH [t188, t189, t190, t191, t192, t193, t194, t195, t196, t197, t198, t199, t200, t201, t202, t203, t204, t205, t206, t207, t208, t209, t210, t211, t212, t213, t214, t215, t216, t217, t218, t219, t220, t221] as nodes
// Create dependency relationships for sentence 15
MATCH (t1:Token {id: 188}), (t2:Token {id: 190}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 189}), (t2:Token {id: 190}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 191}), (t2:Token {id: 192}) WITH t1, t2 CREATE (t1)-[:amod]->(t2);
MATCH (t1:Token {id: 192}), (t2:Token {id: 190}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 193}), (t2:Token {id: 194}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 194}), (t2:Token {id: 190}) WITH t1, t2 CREATE (t1)-[:advcl]->(t2);
MATCH (t1:Token {id: 195}), (t2:Token {id: 196}) WITH t1, t2 CREATE (t1)-[:advmod]->(t2);
MATCH (t1:Token {id: 196}), (t2:Token {id: 197}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 197}), (t2:Token {id: 194}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 198}), (t2:Token {id: 194}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 199}), (t2:Token {id: 201}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 200}), (t2:Token {id: 201}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 201}), (t2:Token {id: 198}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 202}), (t2:Token {id: 190}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 203}), (t2:Token {id: 204}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 204}), (t2:Token {id: 190}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 205}), (t2:Token {id: 204}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 206}), (t2:Token {id: 205}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 207}), (t2:Token {id: 204}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 208}), (t2:Token {id: 209}) WITH t1, t2 CREATE (t1)-[:mark]->(t2);
MATCH (t1:Token {id: 209}), (t2:Token {id: 204}) WITH t1, t2 CREATE (t1)-[:advcl]->(t2);
MATCH (t1:Token {id: 210}), (t2:Token {id: 209}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 211}), (t2:Token {id: 209}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 212}), (t2:Token {id: 213}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 213}), (t2:Token {id: 211}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 214}), (t2:Token {id: 204}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 215}), (t2:Token {id: 214}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 216}), (t2:Token {id: 218}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 217}), (t2:Token {id: 218}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 218}), (t2:Token {id: 215}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 219}), (t2:Token {id: 220}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 220}), (t2:Token {id: 204}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 221}), (t2:Token {id: 190}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 16
CREATE (t222:Token {id: 222, text: 'THIS', pos: 'DET', position: 0}),
       (t223:Token {id: 223, text: 'REPORT', pos: 'NOUN', position: 1}),
       (t224:Token {id: 224, text: 'DOES', pos: 'AUX', position: 2}),
       (t225:Token {id: 225, text: 'NOT', pos: 'PART', position: 3}),
       (t226:Token {id: 226, text: 'CONSTITUTE', pos: 'VERB', position: 4}),
       (t227:Token {id: 227, text: 'AN', pos: 'DET', position: 5}),
       (t228:Token {id: 228, text: 'ADMISSION', pos: 'NOUN', position: 6}),
       (t229:Token {id: 229, text: 'OR', pos: 'CCONJ', position: 7}),
       (t230:Token {id: 230, text: 'A', pos: 'DET', position: 8}),
       (t231:Token {id: 231, text: 'CONCLUSION', pos: 'PROPN', position: 9}),
       (t232:Token {id: 232, text: 'BY', pos: 'PROPN', position: 10}),
       (t233:Token {id: 233, text: 'FDA', pos: 'PROPN', position: 11}),
       (t234:Token {id: 234, text: ',', pos: 'PUNCT', position: 12}),
       (t235:Token {id: 235, text: 'MEDTRONIC', pos: 'PROPN', position: 13}),
       (t236:Token {id: 236, text: ',', pos: 'PUNCT', position: 14}),
       (t237:Token {id: 237, text: 'OR', pos: 'CCONJ', position: 15}),
       (t238:Token {id: 238, text: 'ITS', pos: 'PRON', position: 16}),
       (t239:Token {id: 239, text: 'EMPLOYEES', pos: 'NOUN', position: 17}),
       (t240:Token {id: 240, text: 'THAT', pos: 'SCONJ', position: 18}),
       (t241:Token {id: 241, text: 'THE', pos: 'DET', position: 19}),
       (t242:Token {id: 242, text: 'DEVICE', pos: 'NOUN', position: 20}),
       (t243:Token {id: 243, text: ',', pos: 'PUNCT', position: 21}),
       (t244:Token {id: 244, text: 'MEDTRONIC', pos: 'PROPN', position: 22}),
       (t245:Token {id: 245, text: ',', pos: 'PUNCT', position: 23}),
       (t246:Token {id: 246, text: 'OR', pos: 'CCONJ', position: 24}),
       (t247:Token {id: 247, text: 'ITS', pos: 'PRON', position: 25}),
       (t248:Token {id: 248, text: 'EMPLOYEES', pos: 'PROPN', position: 26}),
       (t249:Token {id: 249, text: 'CAUSED', pos: 'NOUN', position: 27}),
       (t250:Token {id: 250, text: 'OR', pos: 'CCONJ', position: 28}),
       (t251:Token {id: 251, text: 'CONTRIBUTED', pos: 'VERB', position: 29}),
       (t252:Token {id: 252, text: 'TO', pos: 'ADP', position: 30}),
       (t253:Token {id: 253, text: 'THE', pos: 'DET', position: 31}),
       (t254:Token {id: 254, text: 'EVENT', pos: 'NOUN', position: 32}),
       (t255:Token {id: 255, text: 'DESCRIBED', pos: 'VERB', position: 33}),
       (t256:Token {id: 256, text: 'IN', pos: 'ADP', position: 34}),
       (t257:Token {id: 257, text: 'THE', pos: 'DET', position: 35}),
       (t258:Token {id: 258, text: 'REPORT', pos: 'PROPN', position: 36}),
       (t259:Token {id: 259, text: '.', pos: 'PUNCT', position: 37})
WITH [t222, t223, t224, t225, t226, t227, t228, t229, t230, t231, t232, t233, t234, t235, t236, t237, t238, t239, t240, t241, t242, t243, t244, t245, t246, t247, t248, t249, t250, t251, t252, t253, t254, t255, t256, t257, t258, t259] as nodes
// Create dependency relationships for sentence 16
MATCH (t1:Token {id: 222}), (t2:Token {id: 223}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 223}), (t2:Token {id: 226}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 224}), (t2:Token {id: 226}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 225}), (t2:Token {id: 226}) WITH t1, t2 CREATE (t1)-[:neg]->(t2);
MATCH (t1:Token {id: 227}), (t2:Token {id: 228}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 228}), (t2:Token {id: 226}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 229}), (t2:Token {id: 226}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 230}), (t2:Token {id: 231}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 231}), (t2:Token {id: 226}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 232}), (t2:Token {id: 226}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 233}), (t2:Token {id: 232}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 234}), (t2:Token {id: 233}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 235}), (t2:Token {id: 233}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 236}), (t2:Token {id: 235}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 237}), (t2:Token {id: 226}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 238}), (t2:Token {id: 239}) WITH t1, t2 CREATE (t1)-[:poss]->(t2);
MATCH (t1:Token {id: 239}), (t2:Token {id: 255}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 240}), (t2:Token {id: 251}) WITH t1, t2 CREATE (t1)-[:mark]->(t2);
MATCH (t1:Token {id: 241}), (t2:Token {id: 242}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 242}), (t2:Token {id: 251}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 243}), (t2:Token {id: 242}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 244}), (t2:Token {id: 242}) WITH t1, t2 CREATE (t1)-[:appos]->(t2);
MATCH (t1:Token {id: 245}), (t2:Token {id: 244}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 246}), (t2:Token {id: 242}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 247}), (t2:Token {id: 248}) WITH t1, t2 CREATE (t1)-[:poss]->(t2);
MATCH (t1:Token {id: 248}), (t2:Token {id: 249}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 249}), (t2:Token {id: 242}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 250}), (t2:Token {id: 249}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 251}), (t2:Token {id: 239}) WITH t1, t2 CREATE (t1)-[:acl]->(t2);
MATCH (t1:Token {id: 252}), (t2:Token {id: 251}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 253}), (t2:Token {id: 254}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 254}), (t2:Token {id: 252}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 255}), (t2:Token {id: 226}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 256}), (t2:Token {id: 255}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 257}), (t2:Token {id: 258}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 258}), (t2:Token {id: 256}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 259}), (t2:Token {id: 226}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 17
CREATE (t260:Token {id: 260, text: 'IN', pos: 'ADP', position: 0}),
       (t261:Token {id: 261, text: 'PARTICULAR', pos: 'PROPN', position: 1}),
       (t262:Token {id: 262, text: ',', pos: 'PUNCT', position: 2}),
       (t263:Token {id: 263, text: 'THIS', pos: 'DET', position: 3}),
       (t264:Token {id: 264, text: 'REPORT', pos: 'NOUN', position: 4}),
       (t265:Token {id: 265, text: 'DOES', pos: 'AUX', position: 5}),
       (t266:Token {id: 266, text: 'NOT', pos: 'PART', position: 6}),
       (t267:Token {id: 267, text: 'CONSTITUTE', pos: 'VERB', position: 7}),
       (t268:Token {id: 268, text: 'AN', pos: 'DET', position: 8}),
       (t269:Token {id: 269, text: 'ADMISSION', pos: 'NOUN', position: 9}),
       (t270:Token {id: 270, text: 'BY', pos: 'ADP', position: 10}),
       (t271:Token {id: 271, text: 'ANYONE', pos: 'PRON', position: 11}),
       (t272:Token {id: 272, text: 'THAT', pos: 'SCONJ', position: 12}),
       (t273:Token {id: 273, text: 'THE', pos: 'DET', position: 13}),
       (t274:Token {id: 274, text: 'PRODUCT', pos: 'NOUN', position: 14}),
       (t275:Token {id: 275, text: 'DESCRIBED', pos: 'VERB', position: 15}),
       (t276:Token {id: 276, text: 'IN', pos: 'ADP', position: 16}),
       (t277:Token {id: 277, text: 'THIS', pos: 'DET', position: 17}),
       (t278:Token {id: 278, text: 'REPORT', pos: 'NOUN', position: 18}),
       (t279:Token {id: 279, text: 'HAS', pos: 'VERB', position: 19}),
       (t280:Token {id: 280, text: 'ANY', pos: 'DET', position: 20}),
       (t281:Token {id: 281, text: '"', pos: 'PUNCT', position: 21}),
       (t282:Token {id: 282, text: 'DEFECTS', pos: 'NOUN', position: 22}),
       (t283:Token {id: 283, text: '"', pos: 'PUNCT', position: 23}),
       (t284:Token {id: 284, text: 'OR', pos: 'NOUN', position: 24}),
       (t285:Token {id: 285, text: 'HAS', pos: 'AUX', position: 25}),
       (t286:Token {id: 286, text: '"', pos: 'PUNCT', position: 26}),
       (t287:Token {id: 287, text: 'MALFUNCTIONED', pos: 'PROPN', position: 27}),
       (t288:Token {id: 288, text: '"', pos: 'PUNCT', position: 28}),
       (t289:Token {id: 289, text: '.', pos: 'PUNCT', position: 29})
WITH [t260, t261, t262, t263, t264, t265, t266, t267, t268, t269, t270, t271, t272, t273, t274, t275, t276, t277, t278, t279, t280, t281, t282, t283, t284, t285, t286, t287, t288, t289] as nodes
// Create dependency relationships for sentence 17
MATCH (t1:Token {id: 260}), (t2:Token {id: 267}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 261}), (t2:Token {id: 260}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 262}), (t2:Token {id: 267}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 263}), (t2:Token {id: 264}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 264}), (t2:Token {id: 267}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 265}), (t2:Token {id: 267}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 266}), (t2:Token {id: 267}) WITH t1, t2 CREATE (t1)-[:neg]->(t2);
MATCH (t1:Token {id: 268}), (t2:Token {id: 269}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 269}), (t2:Token {id: 267}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 270}), (t2:Token {id: 267}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 271}), (t2:Token {id: 270}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 272}), (t2:Token {id: 275}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 273}), (t2:Token {id: 274}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 274}), (t2:Token {id: 275}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 275}), (t2:Token {id: 267}) WITH t1, t2 CREATE (t1)-[:ccomp]->(t2);
MATCH (t1:Token {id: 276}), (t2:Token {id: 275}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 277}), (t2:Token {id: 278}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 278}), (t2:Token {id: 276}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 279}), (t2:Token {id: 267}) WITH t1, t2 CREATE (t1)-[:advcl]->(t2);
MATCH (t1:Token {id: 280}), (t2:Token {id: 284}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 281}), (t2:Token {id: 284}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 282}), (t2:Token {id: 284}) WITH t1, t2 CREATE (t1)-[:nmod]->(t2);
MATCH (t1:Token {id: 283}), (t2:Token {id: 282}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 284}), (t2:Token {id: 267}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 285}), (t2:Token {id: 287}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 286}), (t2:Token {id: 287}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 287}), (t2:Token {id: 267}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 288}), (t2:Token {id: 287}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 289}), (t2:Token {id: 267}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 18
CREATE (t290:Token {id: 290, text: 'THESE', pos: 'DET', position: 0}),
       (t291:Token {id: 291, text: 'WORDS', pos: 'NOUN', position: 1}),
       (t292:Token {id: 292, text: 'ARE', pos: 'AUX', position: 2}),
       (t293:Token {id: 293, text: 'INCLUDED', pos: 'VERB', position: 3}),
       (t294:Token {id: 294, text: 'IN', pos: 'ADP', position: 4}),
       (t295:Token {id: 295, text: 'THE', pos: 'DET', position: 5}),
       (t296:Token {id: 296, text: 'FDA', pos: 'PROPN', position: 6}),
       (t297:Token {id: 297, text: '3500A', pos: 'PROPN', position: 7}),
       (t298:Token {id: 298, text: 'FORM', pos: 'PROPN', position: 8}),
       (t299:Token {id: 299, text: 'AND', pos: 'CCONJ', position: 9}),
       (t300:Token {id: 300, text: 'ARE', pos: 'AUX', position: 10}),
       (t301:Token {id: 301, text: 'FIXED', pos: 'VERB', position: 11}),
       (t302:Token {id: 302, text: 'ITEMS', pos: 'NOUN', position: 12}),
       (t303:Token {id: 303, text: 'FOR', pos: 'ADP', position: 13}),
       (t304:Token {id: 304, text: 'SELECTION', pos: 'NOUN', position: 14}),
       (t305:Token {id: 305, text: 'CREATED', pos: 'VERB', position: 15}),
       (t306:Token {id: 306, text: 'BY', pos: 'ADP', position: 16}),
       (t307:Token {id: 307, text: 'THE', pos: 'DET', position: 17}),
       (t308:Token {id: 308, text: 'FDA', pos: 'PROPN', position: 18}),
       (t309:Token {id: 309, text: ',', pos: 'PUNCT', position: 19}),
       (t310:Token {id: 310, text: 'TO', pos: 'PART', position: 20}),
       (t311:Token {id: 311, text: 'CATEGORIZE', pos: 'VERB', position: 21}),
       (t312:Token {id: 312, text: 'THE', pos: 'DET', position: 22}),
       (t313:Token {id: 313, text: 'TYPE', pos: 'NOUN', position: 23}),
       (t314:Token {id: 314, text: 'OF', pos: 'ADP', position: 24}),
       (t315:Token {id: 315, text: 'EVENT', pos: 'NOUN', position: 25}),
       (t316:Token {id: 316, text: 'SOLELY', pos: 'PROPN', position: 26}),
       (t317:Token {id: 317, text: 'FOR', pos: 'ADP', position: 27}),
       (t318:Token {id: 318, text: 'THE', pos: 'DET', position: 28}),
       (t319:Token {id: 319, text: 'PURPOSE', pos: 'NOUN', position: 29}),
       (t320:Token {id: 320, text: 'OF', pos: 'ADP', position: 30}),
       (t321:Token {id: 321, text: 'REPORTING', pos: 'VERB', position: 31}),
       (t322:Token {id: 322, text: 'PURSUANT', pos: 'NOUN', position: 32}),
       (t323:Token {id: 323, text: 'TO', pos: 'ADP', position: 33}),
       (t324:Token {id: 324, text: 'PART', pos: 'PROPN', position: 34}),
       (t325:Token {id: 325, text: '803', pos: 'NUM', position: 35}),
       (t326:Token {id: 326, text: '.', pos: 'PUNCT', position: 36})
WITH [t290, t291, t292, t293, t294, t295, t296, t297, t298, t299, t300, t301, t302, t303, t304, t305, t306, t307, t308, t309, t310, t311, t312, t313, t314, t315, t316, t317, t318, t319, t320, t321, t322, t323, t324, t325, t326] as nodes
// Create dependency relationships for sentence 18
MATCH (t1:Token {id: 290}), (t2:Token {id: 291}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 291}), (t2:Token {id: 293}) WITH t1, t2 CREATE (t1)-[:nsubjpass]->(t2);
MATCH (t1:Token {id: 292}), (t2:Token {id: 293}) WITH t1, t2 CREATE (t1)-[:auxpass]->(t2);
MATCH (t1:Token {id: 294}), (t2:Token {id: 293}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 295}), (t2:Token {id: 298}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 296}), (t2:Token {id: 298}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 297}), (t2:Token {id: 298}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 298}), (t2:Token {id: 294}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 299}), (t2:Token {id: 293}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 300}), (t2:Token {id: 301}) WITH t1, t2 CREATE (t1)-[:auxpass]->(t2);
MATCH (t1:Token {id: 301}), (t2:Token {id: 293}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 302}), (t2:Token {id: 301}) WITH t1, t2 CREATE (t1)-[:oprd]->(t2);
MATCH (t1:Token {id: 303}), (t2:Token {id: 301}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 304}), (t2:Token {id: 303}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 305}), (t2:Token {id: 304}) WITH t1, t2 CREATE (t1)-[:acl]->(t2);
MATCH (t1:Token {id: 306}), (t2:Token {id: 305}) WITH t1, t2 CREATE (t1)-[:agent]->(t2);
MATCH (t1:Token {id: 307}), (t2:Token {id: 308}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 308}), (t2:Token {id: 306}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 309}), (t2:Token {id: 301}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 310}), (t2:Token {id: 311}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 311}), (t2:Token {id: 301}) WITH t1, t2 CREATE (t1)-[:advcl]->(t2);
MATCH (t1:Token {id: 312}), (t2:Token {id: 313}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 313}), (t2:Token {id: 311}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 314}), (t2:Token {id: 313}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 315}), (t2:Token {id: 314}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 316}), (t2:Token {id: 301}) WITH t1, t2 CREATE (t1)-[:npadvmod]->(t2);
MATCH (t1:Token {id: 317}), (t2:Token {id: 301}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 318}), (t2:Token {id: 319}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 319}), (t2:Token {id: 317}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 320}), (t2:Token {id: 319}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 321}), (t2:Token {id: 322}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 322}), (t2:Token {id: 320}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 323}), (t2:Token {id: 301}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 324}), (t2:Token {id: 323}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 325}), (t2:Token {id: 324}) WITH t1, t2 CREATE (t1)-[:nummod]->(t2);
MATCH (t1:Token {id: 326}), (t2:Token {id: 293}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 19
CREATE (t327:Token {id: 327, text: 'MEDTRONIC', pos: 'PROPN', position: 0}),
       (t328:Token {id: 328, text: 'OBJECTS', pos: 'PROPN', position: 1}),
       (t329:Token {id: 329, text: 'TO', pos: 'ADP', position: 2}),
       (t330:Token {id: 330, text: 'THE', pos: 'DET', position: 3}),
       (t331:Token {id: 331, text: 'USE', pos: 'NOUN', position: 4}),
       (t332:Token {id: 332, text: 'OF', pos: 'ADP', position: 5}),
       (t333:Token {id: 333, text: 'THESE', pos: 'DET', position: 6}),
       (t334:Token {id: 334, text: 'WORDS', pos: 'NOUN', position: 7}),
       (t335:Token {id: 335, text: 'AND', pos: 'CCONJ', position: 8}),
       (t336:Token {id: 336, text: 'OTHERS', pos: 'NOUN', position: 9}),
       (t337:Token {id: 337, text: 'LIKE', pos: 'ADP', position: 10}),
       (t338:Token {id: 338, text: 'IT', pos: 'PRON', position: 11}),
       (t339:Token {id: 339, text: 'BECAUSE', pos: 'SCONJ', position: 12}),
       (t340:Token {id: 340, text: 'OF', pos: 'ADP', position: 13}),
       (t341:Token {id: 341, text: 'THE', pos: 'DET', position: 14}),
       (t342:Token {id: 342, text: 'LACK', pos: 'NOUN', position: 15}),
       (t343:Token {id: 343, text: 'OF', pos: 'ADP', position: 16}),
       (t344:Token {id: 344, text: 'DEFINITION', pos: 'NOUN', position: 17}),
       (t345:Token {id: 345, text: 'AND', pos: 'CCONJ', position: 18}),
       (t346:Token {id: 346, text: 'THE', pos: 'DET', position: 19}),
       (t347:Token {id: 347, text: 'CONNOTATIONS', pos: 'PROPN', position: 20}),
       (t348:Token {id: 348, text: 'IMPLIED', pos: 'PROPN', position: 21}),
       (t349:Token {id: 349, text: 'BY', pos: 'ADP', position: 22}),
       (t350:Token {id: 350, text: 'THESE', pos: 'DET', position: 23}),
       (t351:Token {id: 351, text: 'TERMS', pos: 'PROPN', position: 24}),
       (t352:Token {id: 352, text: '.', pos: 'PUNCT', position: 25})
WITH [t327, t328, t329, t330, t331, t332, t333, t334, t335, t336, t337, t338, t339, t340, t341, t342, t343, t344, t345, t346, t347, t348, t349, t350, t351, t352] as nodes
// Create dependency relationships for sentence 19
MATCH (t1:Token {id: 327}), (t2:Token {id: 328}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 328}), (t2:Token {id: 348}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 329}), (t2:Token {id: 328}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 330}), (t2:Token {id: 331}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 331}), (t2:Token {id: 329}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 332}), (t2:Token {id: 331}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 333}), (t2:Token {id: 334}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 334}), (t2:Token {id: 332}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 335}), (t2:Token {id: 334}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 336}), (t2:Token {id: 334}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 337}), (t2:Token {id: 328}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 338}), (t2:Token {id: 337}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 339}), (t2:Token {id: 328}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 340}), (t2:Token {id: 339}) WITH t1, t2 CREATE (t1)-[:pcomp]->(t2);
MATCH (t1:Token {id: 341}), (t2:Token {id: 342}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 342}), (t2:Token {id: 339}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 343}), (t2:Token {id: 342}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 344}), (t2:Token {id: 343}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 345}), (t2:Token {id: 342}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 346}), (t2:Token {id: 347}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 347}), (t2:Token {id: 342}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 349}), (t2:Token {id: 348}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 350}), (t2:Token {id: 351}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 351}), (t2:Token {id: 349}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 352}), (t2:Token {id: 348}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 20
CREATE (t353:Token {id: 353, text: 'THIS', pos: 'DET', position: 0}),
       (t354:Token {id: 354, text: 'STATEMENT', pos: 'PROPN', position: 1}),
       (t355:Token {id: 355, text: 'SHOULD', pos: 'AUX', position: 2}),
       (t356:Token {id: 356, text: 'BE', pos: 'AUX', position: 3}),
       (t357:Token {id: 357, text: 'INCLUDED', pos: 'VERB', position: 4}),
       (t358:Token {id: 358, text: 'WITH', pos: 'ADP', position: 5}),
       (t359:Token {id: 359, text: 'ANY', pos: 'DET', position: 6}),
       (t360:Token {id: 360, text: 'INFORMATION', pos: 'NOUN', position: 7}),
       (t361:Token {id: 361, text: 'OR', pos: 'CCONJ', position: 8}),
       (t362:Token {id: 362, text: 'REPORT', pos: 'PROPN', position: 9}),
       (t363:Token {id: 363, text: 'DISCLOSED', pos: 'VERB', position: 10}),
       (t364:Token {id: 364, text: 'TO', pos: 'ADP', position: 11}),
       (t365:Token {id: 365, text: 'THE', pos: 'DET', position: 12}),
       (t366:Token {id: 366, text: 'PUBLIC', pos: 'NOUN', position: 13}),
       (t367:Token {id: 367, text: 'UNDER', pos: 'ADP', position: 14}),
       (t368:Token {id: 368, text: 'THE', pos: 'DET', position: 15}),
       (t369:Token {id: 369, text: 'FREEDOM', pos: 'NOUN', position: 16}),
       (t370:Token {id: 370, text: 'OF', pos: 'ADP', position: 17}),
       (t371:Token {id: 371, text: 'INFORMATION', pos: 'PROPN', position: 18}),
       (t372:Token {id: 372, text: 'ACT', pos: 'PROPN', position: 19}),
       (t373:Token {id: 373, text: '.', pos: 'PUNCT', position: 20})
WITH [t353, t354, t355, t356, t357, t358, t359, t360, t361, t362, t363, t364, t365, t366, t367, t368, t369, t370, t371, t372, t373] as nodes
// Create dependency relationships for sentence 20
MATCH (t1:Token {id: 353}), (t2:Token {id: 354}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 354}), (t2:Token {id: 357}) WITH t1, t2 CREATE (t1)-[:nsubjpass]->(t2);
MATCH (t1:Token {id: 355}), (t2:Token {id: 357}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 356}), (t2:Token {id: 357}) WITH t1, t2 CREATE (t1)-[:auxpass]->(t2);
MATCH (t1:Token {id: 358}), (t2:Token {id: 357}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 359}), (t2:Token {id: 360}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 360}), (t2:Token {id: 358}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 361}), (t2:Token {id: 360}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 362}), (t2:Token {id: 363}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 363}), (t2:Token {id: 357}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 364}), (t2:Token {id: 363}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 365}), (t2:Token {id: 366}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 366}), (t2:Token {id: 364}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 367}), (t2:Token {id: 363}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 368}), (t2:Token {id: 369}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 369}), (t2:Token {id: 367}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 370}), (t2:Token {id: 369}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 371}), (t2:Token {id: 372}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 372}), (t2:Token {id: 370}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 373}), (t2:Token {id: 357}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 21
CREATE (t374:Token {id: 374, text: 'A', pos: 'DET', position: 0}),
       (t375:Token {id: 375, text: 'PERITONEAL', pos: 'PROPN', position: 1}),
       (t376:Token {id: 376, text: 'DIALYSIS', pos: 'PROPN', position: 2}),
       (t377:Token {id: 377, text: '(', pos: 'PUNCT', position: 3}),
       (t378:Token {id: 378, text: 'PD', pos: 'PROPN', position: 4}),
       (t379:Token {id: 379, text: ')', pos: 'PUNCT', position: 5}),
       (t380:Token {id: 380, text: 'PATIENT', pos: 'NOUN', position: 6}),
       (t381:Token {id: 381, text: 'EXPERIENCED', pos: 'VERB', position: 7}),
       (t382:Token {id: 382, text: 'FIVE', pos: 'NUM', position: 8}),
       (t383:Token {id: 383, text: 'EPISODES', pos: 'PROPN', position: 9}),
       (t384:Token {id: 384, text: 'OF', pos: 'ADP', position: 10}),
       (t385:Token {id: 385, text: 'PERITONITIS', pos: 'PROPN', position: 11}),
       (t386:Token {id: 386, text: '.', pos: 'PUNCT', position: 12})
WITH [t374, t375, t376, t377, t378, t379, t380, t381, t382, t383, t384, t385, t386] as nodes
// Create dependency relationships for sentence 21
MATCH (t1:Token {id: 374}), (t2:Token {id: 380}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 375}), (t2:Token {id: 380}) WITH t1, t2 CREATE (t1)-[:nmod]->(t2);
MATCH (t1:Token {id: 376}), (t2:Token {id: 380}) WITH t1, t2 CREATE (t1)-[:nmod]->(t2);
MATCH (t1:Token {id: 377}), (t2:Token {id: 380}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 378}), (t2:Token {id: 380}) WITH t1, t2 CREATE (t1)-[:nmod]->(t2);
MATCH (t1:Token {id: 379}), (t2:Token {id: 380}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 380}), (t2:Token {id: 381}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 382}), (t2:Token {id: 383}) WITH t1, t2 CREATE (t1)-[:nummod]->(t2);
MATCH (t1:Token {id: 383}), (t2:Token {id: 381}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 384}), (t2:Token {id: 383}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 385}), (t2:Token {id: 384}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 386}), (t2:Token {id: 381}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 22
CREATE (t387:Token {id: 387, text: 'THE', pos: 'DET', position: 0}),
       (t388:Token {id: 388, text: '"', pos: 'PUNCT', position: 1}),
       (t389:Token {id: 389, text: 'FIFTH', pos: 'PROPN', position: 2}),
       (t390:Token {id: 390, text: '"', pos: 'PUNCT', position: 3}),
       (t391:Token {id: 391, text: 'PERITONITIS', pos: 'PROPN', position: 4}),
       (t392:Token {id: 392, text: 'WAS', pos: 'AUX', position: 5}),
       (t393:Token {id: 393, text: 'CONFIRMED', pos: 'ADJ', position: 6}),
       (t394:Token {id: 394, text: 'TO', pos: 'PART', position: 7}),
       (t395:Token {id: 395, text: 'BE', pos: 'AUX', position: 8}),
       (t396:Token {id: 396, text: 'ENCAPSULATED', pos: 'VERB', position: 9}),
       (t397:Token {id: 397, text: 'SCLEROSING', pos: 'PROPN', position: 10}),
       (t398:Token {id: 398, text: 'PERITONITIS', pos: 'PROPN', position: 11}),
       (t399:Token {id: 399, text: '.', pos: 'PUNCT', position: 12})
WITH [t387, t388, t389, t390, t391, t392, t393, t394, t395, t396, t397, t398, t399] as nodes
// Create dependency relationships for sentence 22
MATCH (t1:Token {id: 387}), (t2:Token {id: 391}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 388}), (t2:Token {id: 391}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 389}), (t2:Token {id: 391}) WITH t1, t2 CREATE (t1)-[:nmod]->(t2);
MATCH (t1:Token {id: 390}), (t2:Token {id: 391}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 391}), (t2:Token {id: 392}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 393}), (t2:Token {id: 392}) WITH t1, t2 CREATE (t1)-[:acomp]->(t2);
MATCH (t1:Token {id: 394}), (t2:Token {id: 395}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 395}), (t2:Token {id: 393}) WITH t1, t2 CREATE (t1)-[:xcomp]->(t2);
MATCH (t1:Token {id: 396}), (t2:Token {id: 398}) WITH t1, t2 CREATE (t1)-[:amod]->(t2);
MATCH (t1:Token {id: 397}), (t2:Token {id: 398}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 398}), (t2:Token {id: 395}) WITH t1, t2 CREATE (t1)-[:attr]->(t2);
MATCH (t1:Token {id: 399}), (t2:Token {id: 392}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 23
CREATE (t400:Token {id: 400, text: 'ON', pos: 'ADP', position: 0}),
       (t401:Token {id: 401, text: 'THE', pos: 'DET', position: 1}),
       (t402:Token {id: 402, text: 'SAME', pos: 'ADJ', position: 2}),
       (t403:Token {id: 403, text: 'DAY', pos: 'NOUN', position: 3}),
       (t404:Token {id: 404, text: 'AS', pos: 'ADP', position: 4}),
       (t405:Token {id: 405, text: 'THE', pos: 'DET', position: 5}),
       (t406:Token {id: 406, text: 'EVENT', pos: 'PROPN', position: 6}),
       (t407:Token {id: 407, text: 'ONSET', pos: 'NOUN', position: 7}),
       (t408:Token {id: 408, text: ',', pos: 'PUNCT', position: 8}),
       (t409:Token {id: 409, text: 'THE', pos: 'DET', position: 9}),
       (t410:Token {id: 410, text: 'PATIENT', pos: 'NOUN', position: 10}),
       (t411:Token {id: 411, text: 'WAS', pos: 'AUX', position: 11}),
       (t412:Token {id: 412, text: 'HOSPITALIZED', pos: 'NOUN', position: 12}),
       (t413:Token {id: 413, text: 'FOR', pos: 'ADP', position: 13}),
       (t414:Token {id: 414, text: 'THE', pos: 'DET', position: 14}),
       (t415:Token {id: 415, text: 'EVENT', pos: 'NOUN', position: 15}),
       (t416:Token {id: 416, text: '.', pos: 'PUNCT', position: 16})
WITH [t400, t401, t402, t403, t404, t405, t406, t407, t408, t409, t410, t411, t412, t413, t414, t415, t416] as nodes
// Create dependency relationships for sentence 23
MATCH (t1:Token {id: 400}), (t2:Token {id: 411}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 401}), (t2:Token {id: 403}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 402}), (t2:Token {id: 403}) WITH t1, t2 CREATE (t1)-[:amod]->(t2);
MATCH (t1:Token {id: 403}), (t2:Token {id: 400}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 404}), (t2:Token {id: 411}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 405}), (t2:Token {id: 406}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 406}), (t2:Token {id: 407}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 407}), (t2:Token {id: 404}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 408}), (t2:Token {id: 411}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 409}), (t2:Token {id: 410}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 410}), (t2:Token {id: 411}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 412}), (t2:Token {id: 411}) WITH t1, t2 CREATE (t1)-[:attr]->(t2);
MATCH (t1:Token {id: 413}), (t2:Token {id: 411}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 414}), (t2:Token {id: 415}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 415}), (t2:Token {id: 413}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 416}), (t2:Token {id: 411}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 24
CREATE (t417:Token {id: 417, text: 'PD', pos: 'PROPN', position: 0}),
       (t418:Token {id: 418, text: 'CATHETER', pos: 'PROPN', position: 1}),
       (t419:Token {id: 419, text: 'WAS', pos: 'AUX', position: 2}),
       (t420:Token {id: 420, text: 'REMOVED', pos: 'PROPN', position: 3}),
       (t421:Token {id: 421, text: 'WITHIN', pos: 'ADP', position: 4}),
       (t422:Token {id: 422, text: 'A', pos: 'DET', position: 5}),
       (t423:Token {id: 423, text: 'DAY', pos: 'PROPN', position: 6}),
       (t424:Token {id: 424, text: 'OR', pos: 'CCONJ', position: 7}),
       (t425:Token {id: 425, text: '2', pos: 'NUM', position: 8}),
       (t426:Token {id: 426, text: 'OF', pos: 'ADP', position: 9}),
       (t427:Token {id: 427, text: 'HOSPITAL', pos: 'NOUN', position: 10}),
       (t428:Token {id: 428, text: 'ADMISSION', pos: 'NOUN', position: 11}),
       (t429:Token {id: 429, text: 'AND', pos: 'CCONJ', position: 12}),
       (t430:Token {id: 430, text: 'WITHDREW', pos: 'VERB', position: 13}),
       (t431:Token {id: 431, text: 'FROM', pos: 'ADP', position: 14}),
       (t432:Token {id: 432, text: 'TREATMENT', pos: 'PROPN', position: 15}),
       (t433:Token {id: 433, text: '.', pos: 'PUNCT', position: 16})
WITH [t417, t418, t419, t420, t421, t422, t423, t424, t425, t426, t427, t428, t429, t430, t431, t432, t433] as nodes
// Create dependency relationships for sentence 24
MATCH (t1:Token {id: 417}), (t2:Token {id: 418}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 418}), (t2:Token {id: 419}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 420}), (t2:Token {id: 419}) WITH t1, t2 CREATE (t1)-[:acomp]->(t2);
MATCH (t1:Token {id: 421}), (t2:Token {id: 419}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 422}), (t2:Token {id: 423}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 423}), (t2:Token {id: 421}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 424}), (t2:Token {id: 419}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 425}), (t2:Token {id: 424}) WITH t1, t2 CREATE (t1)-[:nummod]->(t2);
MATCH (t1:Token {id: 426}), (t2:Token {id: 419}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 427}), (t2:Token {id: 428}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 428}), (t2:Token {id: 426}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 429}), (t2:Token {id: 419}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 430}), (t2:Token {id: 419}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 431}), (t2:Token {id: 430}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 432}), (t2:Token {id: 431}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 433}), (t2:Token {id: 419}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 25
CREATE (t434:Token {id: 434, text: 'THE', pos: 'DET', position: 0}),
       (t435:Token {id: 435, text: 'CAUSE', pos: 'NOUN', position: 1}),
       (t436:Token {id: 436, text: ',', pos: 'PUNCT', position: 2}),
       (t437:Token {id: 437, text: 'TREATMENT', pos: 'PROPN', position: 3}),
       (t438:Token {id: 438, text: 'AND', pos: 'CCONJ', position: 4}),
       (t439:Token {id: 439, text: 'PATIENT', pos: 'PROPN', position: 5}),
       (t440:Token {id: 440, text: 'OUTCOME', pos: 'PROPN', position: 6}),
       (t441:Token {id: 441, text: 'WERE', pos: 'AUX', position: 7}),
       (t442:Token {id: 442, text: 'NOT', pos: 'PART', position: 8}),
       (t443:Token {id: 443, text: 'REPORTED', pos: 'VERB', position: 9}),
       (t444:Token {id: 444, text: '.', pos: 'PUNCT', position: 10})
WITH [t434, t435, t436, t437, t438, t439, t440, t441, t442, t443, t444] as nodes
// Create dependency relationships for sentence 25
MATCH (t1:Token {id: 434}), (t2:Token {id: 435}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 435}), (t2:Token {id: 440}) WITH t1, t2 CREATE (t1)-[:nmod]->(t2);
MATCH (t1:Token {id: 436}), (t2:Token {id: 435}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 437}), (t2:Token {id: 435}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 438}), (t2:Token {id: 437}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 439}), (t2:Token {id: 437}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 440}), (t2:Token {id: 443}) WITH t1, t2 CREATE (t1)-[:nsubjpass]->(t2);
MATCH (t1:Token {id: 441}), (t2:Token {id: 443}) WITH t1, t2 CREATE (t1)-[:auxpass]->(t2);
MATCH (t1:Token {id: 442}), (t2:Token {id: 443}) WITH t1, t2 CREATE (t1)-[:neg]->(t2);
MATCH (t1:Token {id: 444}), (t2:Token {id: 443}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 26
CREATE (t445:Token {id: 445, text: 'AFTER', pos: 'ADP', position: 0}),
       (t446:Token {id: 446, text: 'HOSPITAL', pos: 'NOUN', position: 1}),
       (t447:Token {id: 447, text: 'DISCHARGE', pos: 'VERB', position: 2}),
       (t448:Token {id: 448, text: '16', pos: 'NUM', position: 3}),
       (t449:Token {id: 449, text: 'DAYS', pos: 'NOUN', position: 4}),
       (t450:Token {id: 450, text: 'AFTER', pos: 'ADP', position: 5}),
       (t451:Token {id: 451, text: 'THE', pos: 'DET', position: 6}),
       (t452:Token {id: 452, text: 'ONSET', pos: 'NOUN', position: 7}),
       (t453:Token {id: 453, text: 'OF', pos: 'ADP', position: 8}),
       (t454:Token {id: 454, text: 'THE', pos: 'DET', position: 9}),
       (t455:Token {id: 455, text: '"', pos: 'PUNCT', position: 10}),
       (t456:Token {id: 456, text: 'FIFTH', pos: 'PROPN', position: 11}),
       (t457:Token {id: 457, text: '"', pos: 'PUNCT', position: 12}),
       (t458:Token {id: 458, text: 'PERITONITIS', pos: 'PROPN', position: 13}),
       (t459:Token {id: 459, text: ',', pos: 'PUNCT', position: 14}),
       (t460:Token {id: 460, text: 'THE', pos: 'DET', position: 15}),
       (t461:Token {id: 461, text: 'PATIENT', pos: 'NOUN', position: 16}),
       (t462:Token {id: 462, text: 'PASSED', pos: 'VERB', position: 17}),
       (t463:Token {id: 463, text: 'AWAY', pos: 'ADV', position: 18}),
       (t464:Token {id: 464, text: '.', pos: 'PUNCT', position: 19})
WITH [t445, t446, t447, t448, t449, t450, t451, t452, t453, t454, t455, t456, t457, t458, t459, t460, t461, t462, t463, t464] as nodes
// Create dependency relationships for sentence 26
MATCH (t1:Token {id: 445}), (t2:Token {id: 447}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 446}), (t2:Token {id: 445}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 447}), (t2:Token {id: 462}) WITH t1, t2 CREATE (t1)-[:advcl]->(t2);
MATCH (t1:Token {id: 448}), (t2:Token {id: 449}) WITH t1, t2 CREATE (t1)-[:nummod]->(t2);
MATCH (t1:Token {id: 449}), (t2:Token {id: 450}) WITH t1, t2 CREATE (t1)-[:npadvmod]->(t2);
MATCH (t1:Token {id: 450}), (t2:Token {id: 447}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 451}), (t2:Token {id: 452}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 452}), (t2:Token {id: 450}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 453}), (t2:Token {id: 452}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 454}), (t2:Token {id: 458}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 455}), (t2:Token {id: 458}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 456}), (t2:Token {id: 458}) WITH t1, t2 CREATE (t1)-[:nmod]->(t2);
MATCH (t1:Token {id: 457}), (t2:Token {id: 458}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 458}), (t2:Token {id: 453}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 459}), (t2:Token {id: 462}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 460}), (t2:Token {id: 461}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 461}), (t2:Token {id: 462}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 463}), (t2:Token {id: 462}) WITH t1, t2 CREATE (t1)-[:advmod]->(t2);
MATCH (t1:Token {id: 464}), (t2:Token {id: 462}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 27
CREATE (t465:Token {id: 465, text: 'THE', pos: 'DET', position: 0}),
       (t466:Token {id: 466, text: 'CAUSE', pos: 'PROPN', position: 1}),
       (t467:Token {id: 467, text: 'OF', pos: 'ADP', position: 2}),
       (t468:Token {id: 468, text: 'DEATH', pos: 'NOUN', position: 3}),
       (t469:Token {id: 469, text: 'WAS', pos: 'AUX', position: 4}),
       (t470:Token {id: 470, text: 'REPORTED', pos: 'VERB', position: 5}),
       (t471:Token {id: 471, text: 'AS', pos: 'ADP', position: 6}),
       (t472:Token {id: 472, text: 'DUE', pos: 'PROPN', position: 7}),
       (t473:Token {id: 473, text: 'TO', pos: 'ADP', position: 8}),
       (t474:Token {id: 474, text: 'THE', pos: 'DET', position: 9}),
       (t475:Token {id: 475, text: 'PATIENT', pos: 'NOUN', position: 10}),
       (t476:Token {id: 476, text: 'WITHDREW', pos: 'VERB', position: 11}),
       (t477:Token {id: 477, text: 'FROM', pos: 'ADP', position: 12}),
       (t478:Token {id: 478, text: 'TREATMENT', pos: 'PROPN', position: 13})
WITH [t465, t466, t467, t468, t469, t470, t471, t472, t473, t474, t475, t476, t477, t478] as nodes
// Create dependency relationships for sentence 27
MATCH (t1:Token {id: 465}), (t2:Token {id: 466}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 466}), (t2:Token {id: 470}) WITH t1, t2 CREATE (t1)-[:nsubjpass]->(t2);
MATCH (t1:Token {id: 467}), (t2:Token {id: 466}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 468}), (t2:Token {id: 467}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 469}), (t2:Token {id: 470}) WITH t1, t2 CREATE (t1)-[:auxpass]->(t2);
MATCH (t1:Token {id: 471}), (t2:Token {id: 470}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 472}), (t2:Token {id: 471}) WITH t1, t2 CREATE (t1)-[:pcomp]->(t2);
MATCH (t1:Token {id: 473}), (t2:Token {id: 472}) WITH t1, t2 CREATE (t1)-[:pcomp]->(t2);
MATCH (t1:Token {id: 474}), (t2:Token {id: 475}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 475}), (t2:Token {id: 471}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 476}), (t2:Token {id: 470}) WITH t1, t2 CREATE (t1)-[:advcl]->(t2);
MATCH (t1:Token {id: 477}), (t2:Token {id: 476}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 478}), (t2:Token {id: 477}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);

// Create tokens for sentence 28
CREATE (t479:Token {id: 479, text: 'AS', pos: 'SCONJ', position: 0}),
       (t480:Token {id: 480, text: 'THE', pos: 'DET', position: 1}),
       (t481:Token {id: 481, text: 'PATIENT', pos: 'NOUN', position: 2}),
       (t482:Token {id: 482, text: 'DID', pos: 'AUX', position: 3}),
       (t483:Token {id: 483, text: 'NOT', pos: 'PART', position: 4}),
       (t484:Token {id: 484, text: 'WANT', pos: 'VERB', position: 5}),
       (t485:Token {id: 485, text: 'TO', pos: 'PART', position: 6}),
       (t486:Token {id: 486, text: 'TRANSITION', pos: 'VERB', position: 7}),
       (t487:Token {id: 487, text: 'ONTO', pos: 'NOUN', position: 8}),
       (t488:Token {id: 488, text: 'LIFE', pos: 'NOUN', position: 9}),
       (t489:Token {id: 489, text: 'OF', pos: 'ADP', position: 10}),
       (t490:Token {id: 490, text: 'HEMODIALYSIS', pos: 'PROPN', position: 11}),
       (t491:Token {id: 491, text: '.', pos: 'PUNCT', position: 12})
WITH [t479, t480, t481, t482, t483, t484, t485, t486, t487, t488, t489, t490, t491] as nodes
// Create dependency relationships for sentence 28
MATCH (t1:Token {id: 479}), (t2:Token {id: 484}) WITH t1, t2 CREATE (t1)-[:mark]->(t2);
MATCH (t1:Token {id: 480}), (t2:Token {id: 481}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 481}), (t2:Token {id: 484}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 482}), (t2:Token {id: 484}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 483}), (t2:Token {id: 484}) WITH t1, t2 CREATE (t1)-[:neg]->(t2);
MATCH (t1:Token {id: 485}), (t2:Token {id: 486}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 486}), (t2:Token {id: 484}) WITH t1, t2 CREATE (t1)-[:xcomp]->(t2);
MATCH (t1:Token {id: 487}), (t2:Token {id: 488}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 488}), (t2:Token {id: 486}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 489}), (t2:Token {id: 488}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 490}), (t2:Token {id: 489}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 491}), (t2:Token {id: 484}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 29
CREATE (t492:Token {id: 492, text: 'AUTOPSY', pos: 'PROPN', position: 0}),
       (t493:Token {id: 493, text: 'WAS', pos: 'AUX', position: 1}),
       (t494:Token {id: 494, text: 'NOT', pos: 'PART', position: 2}),
       (t495:Token {id: 495, text: 'PERFORMED', pos: 'ADJ', position: 3}),
       (t496:Token {id: 496, text: '.', pos: 'PUNCT', position: 4})
WITH [t492, t493, t494, t495, t496] as nodes
// Create dependency relationships for sentence 29
MATCH (t1:Token {id: 492}), (t2:Token {id: 493}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 494}), (t2:Token {id: 495}) WITH t1, t2 CREATE (t1)-[:neg]->(t2);
MATCH (t1:Token {id: 495}), (t2:Token {id: 493}) WITH t1, t2 CREATE (t1)-[:acomp]->(t2);
MATCH (t1:Token {id: 496}), (t2:Token {id: 493}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 30
CREATE (t497:Token {id: 497, text: 'IT', pos: 'PRON', position: 0}),
       (t498:Token {id: 498, text: 'WAS', pos: 'AUX', position: 1}),
       (t499:Token {id: 499, text: 'NOT', pos: 'PART', position: 2}),
       (t500:Token {id: 500, text: 'REPORTED', pos: 'VERB', position: 3}),
       (t501:Token {id: 501, text: 'IF', pos: 'SCONJ', position: 4}),
       (t502:Token {id: 502, text: 'THE', pos: 'DET', position: 5}),
       (t503:Token {id: 503, text: 'PATIENT', pos: 'NOUN', position: 6}),
       (t504:Token {id: 504, text: 'HAS', pos: 'AUX', position: 7}),
       (t505:Token {id: 505, text: 'RECOVERED', pos: 'VERB', position: 8}),
       (t506:Token {id: 506, text: 'FROM', pos: 'ADP', position: 9}),
       (t507:Token {id: 507, text: 'THE', pos: 'DET', position: 10}),
       (t508:Token {id: 508, text: 'PERITONITIS', pos: 'PROPN', position: 11}),
       (t509:Token {id: 509, text: 'EVENT', pos: 'VERB', position: 12}),
       (t510:Token {id: 510, text: 'PRIOR', pos: 'PROPN', position: 13}),
       (t511:Token {id: 511, text: 'TO', pos: 'ADP', position: 14}),
       (t512:Token {id: 512, text: 'OR', pos: 'CCONJ', position: 15}),
       (t513:Token {id: 513, text: 'AT', pos: 'ADP', position: 16}),
       (t514:Token {id: 514, text: 'THE', pos: 'DET', position: 17}),
       (t515:Token {id: 515, text: 'TIME', pos: 'PROPN', position: 18}),
       (t516:Token {id: 516, text: 'OF', pos: 'ADP', position: 19}),
       (t517:Token {id: 517, text: 'DEATH', pos: 'NOUN', position: 20}),
       (t518:Token {id: 518, text: '.', pos: 'PUNCT', position: 21})
WITH [t497, t498, t499, t500, t501, t502, t503, t504, t505, t506, t507, t508, t509, t510, t511, t512, t513, t514, t515, t516, t517, t518] as nodes
// Create dependency relationships for sentence 30
MATCH (t1:Token {id: 497}), (t2:Token {id: 500}) WITH t1, t2 CREATE (t1)-[:nsubjpass]->(t2);
MATCH (t1:Token {id: 498}), (t2:Token {id: 500}) WITH t1, t2 CREATE (t1)-[:auxpass]->(t2);
MATCH (t1:Token {id: 499}), (t2:Token {id: 500}) WITH t1, t2 CREATE (t1)-[:neg]->(t2);
MATCH (t1:Token {id: 501}), (t2:Token {id: 505}) WITH t1, t2 CREATE (t1)-[:mark]->(t2);
MATCH (t1:Token {id: 502}), (t2:Token {id: 503}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 503}), (t2:Token {id: 505}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 504}), (t2:Token {id: 505}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 505}), (t2:Token {id: 500}) WITH t1, t2 CREATE (t1)-[:advcl]->(t2);
MATCH (t1:Token {id: 506}), (t2:Token {id: 505}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 507}), (t2:Token {id: 508}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 508}), (t2:Token {id: 506}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 509}), (t2:Token {id: 500}) WITH t1, t2 CREATE (t1)-[:ccomp]->(t2);
MATCH (t1:Token {id: 510}), (t2:Token {id: 509}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 511}), (t2:Token {id: 509}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 512}), (t2:Token {id: 511}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 513}), (t2:Token {id: 500}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 514}), (t2:Token {id: 515}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 515}), (t2:Token {id: 513}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 516}), (t2:Token {id: 515}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 517}), (t2:Token {id: 516}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 518}), (t2:Token {id: 500}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 31
CREATE (t519:Token {id: 519, text: 'NO', pos: 'DET', position: 0}),
       (t520:Token {id: 520, text: 'ADDITIONAL', pos: 'ADJ', position: 1}),
       (t521:Token {id: 521, text: 'INFORMATION', pos: 'NOUN', position: 2}),
       (t522:Token {id: 522, text: 'IS', pos: 'AUX', position: 3}),
       (t523:Token {id: 523, text: 'AVAILABLE', pos: 'PROPN', position: 4}),
       (t524:Token {id: 524, text: '.', pos: 'PUNCT', position: 5})
WITH [t519, t520, t521, t522, t523, t524] as nodes
// Create dependency relationships for sentence 31
MATCH (t1:Token {id: 519}), (t2:Token {id: 521}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 520}), (t2:Token {id: 521}) WITH t1, t2 CREATE (t1)-[:amod]->(t2);
MATCH (t1:Token {id: 521}), (t2:Token {id: 522}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 523}), (t2:Token {id: 522}) WITH t1, t2 CREATE (t1)-[:attr]->(t2);
MATCH (t1:Token {id: 524}), (t2:Token {id: 522}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 32
CREATE (t525:Token {id: 525, text: 'THE', pos: 'DET', position: 0}),
       (t526:Token {id: 526, text: 'DEVICE', pos: 'NOUN', position: 1}),
       (t527:Token {id: 527, text: 'WAS', pos: 'AUX', position: 2}),
       (t528:Token {id: 528, text: 'NOT', pos: 'PART', position: 3}),
       (t529:Token {id: 529, text: 'RETURNED', pos: 'PROPN', position: 4}),
       (t530:Token {id: 530, text: 'AND', pos: 'CCONJ', position: 5}),
       (t531:Token {id: 531, text: 'THE', pos: 'DET', position: 6}),
       (t532:Token {id: 532, text: 'LOT', pos: 'PROPN', position: 7}),
       (t533:Token {id: 533, text: 'NUMBER', pos: 'NOUN', position: 8}),
       (t534:Token {id: 534, text: 'IS', pos: 'AUX', position: 9}),
       (t535:Token {id: 535, text: 'UNKNOWN', pos: 'ADJ', position: 10}),
       (t536:Token {id: 536, text: ';', pos: 'PUNCT', position: 11}),
       (t537:Token {id: 537, text: 'THEREFORE', pos: 'PROPN', position: 12}),
       (t538:Token {id: 538, text: ',', pos: 'PUNCT', position: 13}),
       (t539:Token {id: 539, text: 'A', pos: 'DET', position: 14}),
       (t540:Token {id: 540, text: 'DEVICE', pos: 'NOUN', position: 15}),
       (t541:Token {id: 541, text: 'ANALYSIS', pos: 'NOUN', position: 16}),
       (t542:Token {id: 542, text: 'COULD', pos: 'AUX', position: 17}),
       (t543:Token {id: 543, text: 'NOT', pos: 'PART', position: 18}),
       (t544:Token {id: 544, text: 'BE', pos: 'AUX', position: 19}),
       (t545:Token {id: 545, text: 'COMPLETED', pos: 'VERB', position: 20}),
       (t546:Token {id: 546, text: '.', pos: 'PUNCT', position: 21})
WITH [t525, t526, t527, t528, t529, t530, t531, t532, t533, t534, t535, t536, t537, t538, t539, t540, t541, t542, t543, t544, t545, t546] as nodes
// Create dependency relationships for sentence 32
MATCH (t1:Token {id: 525}), (t2:Token {id: 526}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 526}), (t2:Token {id: 527}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 527}), (t2:Token {id: 545}) WITH t1, t2 CREATE (t1)-[:auxpass]->(t2);
MATCH (t1:Token {id: 528}), (t2:Token {id: 527}) WITH t1, t2 CREATE (t1)-[:neg]->(t2);
MATCH (t1:Token {id: 529}), (t2:Token {id: 527}) WITH t1, t2 CREATE (t1)-[:attr]->(t2);
MATCH (t1:Token {id: 530}), (t2:Token {id: 529}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 531}), (t2:Token {id: 533}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 532}), (t2:Token {id: 533}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 533}), (t2:Token {id: 534}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 534}), (t2:Token {id: 545}) WITH t1, t2 CREATE (t1)-[:ccomp]->(t2);
MATCH (t1:Token {id: 535}), (t2:Token {id: 534}) WITH t1, t2 CREATE (t1)-[:acomp]->(t2);
MATCH (t1:Token {id: 536}), (t2:Token {id: 545}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 537}), (t2:Token {id: 545}) WITH t1, t2 CREATE (t1)-[:advmod]->(t2);
MATCH (t1:Token {id: 538}), (t2:Token {id: 545}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 539}), (t2:Token {id: 540}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 540}), (t2:Token {id: 545}) WITH t1, t2 CREATE (t1)-[:nsubjpass]->(t2);
MATCH (t1:Token {id: 541}), (t2:Token {id: 540}) WITH t1, t2 CREATE (t1)-[:appos]->(t2);
MATCH (t1:Token {id: 542}), (t2:Token {id: 545}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 543}), (t2:Token {id: 545}) WITH t1, t2 CREATE (t1)-[:neg]->(t2);
MATCH (t1:Token {id: 544}), (t2:Token {id: 545}) WITH t1, t2 CREATE (t1)-[:auxpass]->(t2);
MATCH (t1:Token {id: 546}), (t2:Token {id: 545}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 33
CREATE (t547:Token {id: 547, text: 'SHOULD', pos: 'AUX', position: 0}),
       (t548:Token {id: 548, text: 'ADDITIONAL', pos: 'VERB', position: 1}),
       (t549:Token {id: 549, text: 'RELEVANT', pos: 'ADJ', position: 2}),
       (t550:Token {id: 550, text: 'INFORMATION', pos: 'NOUN', position: 3}),
       (t551:Token {id: 551, text: 'BECOME', pos: 'VERB', position: 4}),
       (t552:Token {id: 552, text: 'AVAILABLE', pos: 'PROPN', position: 5}),
       (t553:Token {id: 553, text: ',', pos: 'PUNCT', position: 6}),
       (t554:Token {id: 554, text: 'A', pos: 'DET', position: 7}),
       (t555:Token {id: 555, text: 'SUPPLEMENTAL', pos: 'PROPN', position: 8}),
       (t556:Token {id: 556, text: 'REPORT', pos: 'PROPN', position: 9}),
       (t557:Token {id: 557, text: 'WILL', pos: 'AUX', position: 10}),
       (t558:Token {id: 558, text: 'BE', pos: 'AUX', position: 11}),
       (t559:Token {id: 559, text: 'SUBMITTED', pos: 'VERB', position: 12}),
       (t560:Token {id: 560, text: '.', pos: 'PUNCT', position: 13})
WITH [t547, t548, t549, t550, t551, t552, t553, t554, t555, t556, t557, t558, t559, t560] as nodes
// Create dependency relationships for sentence 33
MATCH (t1:Token {id: 547}), (t2:Token {id: 548}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 548}), (t2:Token {id: 559}) WITH t1, t2 CREATE (t1)-[:advcl]->(t2);
MATCH (t1:Token {id: 549}), (t2:Token {id: 550}) WITH t1, t2 CREATE (t1)-[:amod]->(t2);
MATCH (t1:Token {id: 550}), (t2:Token {id: 551}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 551}), (t2:Token {id: 548}) WITH t1, t2 CREATE (t1)-[:ccomp]->(t2);
MATCH (t1:Token {id: 552}), (t2:Token {id: 551}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 553}), (t2:Token {id: 559}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 554}), (t2:Token {id: 556}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 555}), (t2:Token {id: 556}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 556}), (t2:Token {id: 559}) WITH t1, t2 CREATE (t1)-[:nsubjpass]->(t2);
MATCH (t1:Token {id: 557}), (t2:Token {id: 559}) WITH t1, t2 CREATE (t1)-[:aux]->(t2);
MATCH (t1:Token {id: 558}), (t2:Token {id: 559}) WITH t1, t2 CREATE (t1)-[:auxpass]->(t2);
MATCH (t1:Token {id: 560}), (t2:Token {id: 559}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 34
CREATE (t561:Token {id: 561, text: 'IT', pos: 'PRON', position: 0}),
       (t562:Token {id: 562, text: 'WAS', pos: 'AUX', position: 1}),
       (t563:Token {id: 563, text: 'REPORTED', pos: 'VERB', position: 2}),
       (t564:Token {id: 564, text: 'THAT', pos: 'DET', position: 3}),
       (t565:Token {id: 565, text: 'POST', pos: 'PROPN', position: 4}),
       (t566:Token {id: 566, text: 'IMPLANT', pos: 'ADJ', position: 5}),
       (t567:Token {id: 567, text: 'THE†LEADLESS', pos: 'PROPN', position: 6}),
       (t568:Token {id: 568, text: 'IMPLANTABLE', pos: 'PROPN', position: 7}),
       (t569:Token {id: 569, text: 'PULSE', pos: 'PROPN', position: 8}),
       (t570:Token {id: 570, text: 'GENERATOR', pos: 'PROPN', position: 9}),
       (t571:Token {id: 571, text: '(', pos: 'PUNCT', position: 10}),
       (t572:Token {id: 572, text: 'IPG', pos: 'PROPN', position: 11}),
       (t573:Token {id: 573, text: ')', pos: 'PUNCT', position: 12}),
       (t574:Token {id: 574, text: 'EXHIBITED', pos: 'VERB', position: 13}),
       (t575:Token {id: 575, text: 'HIGH', pos: 'ADJ', position: 14}),
       (t576:Token {id: 576, text: 'THRESHOLDS', pos: 'NOUN', position: 15}),
       (t577:Token {id: 577, text: 'AND', pos: 'CCONJ', position: 16}),
       (t578:Token {id: 578, text: 'INTERMITTENT', pos: 'ADJ', position: 17}),
       (t579:Token {id: 579, text: 'CAPTURE', pos: 'NOUN', position: 18}),
       (t580:Token {id: 580, text: 'WITH', pos: 'ADP', position: 19}),
       (t581:Token {id: 581, text: 'THE', pos: 'DET', position: 20}),
       (t582:Token {id: 582, text: 'PATIENTS', pos: 'NOUN', position: 21}),
       (t583:Token {id: 583, text: 'QRS', pos: 'PROPN', position: 22}),
       (t584:Token {id: 584, text: 'WIDENING', pos: 'PROPN', position: 23}),
       (t585:Token {id: 585, text: '.', pos: 'PUNCT', position: 24})
WITH [t561, t562, t563, t564, t565, t566, t567, t568, t569, t570, t571, t572, t573, t574, t575, t576, t577, t578, t579, t580, t581, t582, t583, t584, t585] as nodes
// Create dependency relationships for sentence 34
MATCH (t1:Token {id: 561}), (t2:Token {id: 563}) WITH t1, t2 CREATE (t1)-[:nsubjpass]->(t2);
MATCH (t1:Token {id: 562}), (t2:Token {id: 563}) WITH t1, t2 CREATE (t1)-[:auxpass]->(t2);
MATCH (t1:Token {id: 564}), (t2:Token {id: 565}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 565}), (t2:Token {id: 574}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 566}), (t2:Token {id: 565}) WITH t1, t2 CREATE (t1)-[:appos]->(t2);
MATCH (t1:Token {id: 567}), (t2:Token {id: 570}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 568}), (t2:Token {id: 569}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 569}), (t2:Token {id: 570}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 570}), (t2:Token {id: 565}) WITH t1, t2 CREATE (t1)-[:appos]->(t2);
MATCH (t1:Token {id: 571}), (t2:Token {id: 572}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 572}), (t2:Token {id: 570}) WITH t1, t2 CREATE (t1)-[:appos]->(t2);
MATCH (t1:Token {id: 573}), (t2:Token {id: 570}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 574}), (t2:Token {id: 563}) WITH t1, t2 CREATE (t1)-[:ccomp]->(t2);
MATCH (t1:Token {id: 575}), (t2:Token {id: 576}) WITH t1, t2 CREATE (t1)-[:amod]->(t2);
MATCH (t1:Token {id: 576}), (t2:Token {id: 574}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 577}), (t2:Token {id: 576}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 578}), (t2:Token {id: 579}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 579}), (t2:Token {id: 576}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 580}), (t2:Token {id: 579}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 581}), (t2:Token {id: 582}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 582}), (t2:Token {id: 580}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 583}), (t2:Token {id: 584}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 584}), (t2:Token {id: 580}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 585}), (t2:Token {id: 563}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 35
CREATE (t586:Token {id: 586, text: 'THE', pos: 'DET', position: 0}),
       (t587:Token {id: 587, text: 'DEVICE', pos: 'NOUN', position: 1}),
       (t588:Token {id: 588, text: 'WAS', pos: 'AUX', position: 2}),
       (t589:Token {id: 589, text: 'REPOSITIONED', pos: 'NOUN', position: 3}),
       (t590:Token {id: 590, text: 'AND', pos: 'CCONJ', position: 4}),
       (t591:Token {id: 591, text: 'REPROGRAMMED', pos: 'PROPN', position: 5}),
       (t592:Token {id: 592, text: 'HOWEVER', pos: 'PROPN', position: 6}),
       (t593:Token {id: 593, text: ',', pos: 'PUNCT', position: 7}),
       (t594:Token {id: 594, text: 'THE', pos: 'DET', position: 8}),
       (t595:Token {id: 595, text: 'PATIENT', pos: 'NOUN', position: 9}),
       (t596:Token {id: 596, text: 'DEVELOPED', pos: 'VERB', position: 10}),
       (t597:Token {id: 597, text: 'METABOLIC', pos: 'PROPN', position: 11}),
       (t598:Token {id: 598, text: 'ACIDOSIS', pos: 'PROPN', position: 12}),
       (t599:Token {id: 599, text: 'CAUSING', pos: 'PROPN', position: 13}),
       (t600:Token {id: 600, text: 'LOSS', pos: 'NOUN', position: 14}),
       (t601:Token {id: 601, text: 'OF', pos: 'ADP', position: 15}),
       (t602:Token {id: 602, text: 'CAPTURE', pos: 'PROPN', position: 16}),
       (t603:Token {id: 603, text: '.', pos: 'PUNCT', position: 17})
WITH [t586, t587, t588, t589, t590, t591, t592, t593, t594, t595, t596, t597, t598, t599, t600, t601, t602, t603] as nodes
// Create dependency relationships for sentence 35
MATCH (t1:Token {id: 586}), (t2:Token {id: 587}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 587}), (t2:Token {id: 588}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 589}), (t2:Token {id: 588}) WITH t1, t2 CREATE (t1)-[:attr]->(t2);
MATCH (t1:Token {id: 590}), (t2:Token {id: 589}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 591}), (t2:Token {id: 592}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 592}), (t2:Token {id: 596}) WITH t1, t2 CREATE (t1)-[:advmod]->(t2);
MATCH (t1:Token {id: 593}), (t2:Token {id: 596}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);
MATCH (t1:Token {id: 594}), (t2:Token {id: 595}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 595}), (t2:Token {id: 596}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 596}), (t2:Token {id: 588}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 597}), (t2:Token {id: 600}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 598}), (t2:Token {id: 599}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 599}), (t2:Token {id: 600}) WITH t1, t2 CREATE (t1)-[:compound]->(t2);
MATCH (t1:Token {id: 600}), (t2:Token {id: 596}) WITH t1, t2 CREATE (t1)-[:dobj]->(t2);
MATCH (t1:Token {id: 601}), (t2:Token {id: 600}) WITH t1, t2 CREATE (t1)-[:prep]->(t2);
MATCH (t1:Token {id: 602}), (t2:Token {id: 601}) WITH t1, t2 CREATE (t1)-[:pobj]->(t2);
MATCH (t1:Token {id: 603}), (t2:Token {id: 596}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// Create tokens for sentence 36
CREATE (t604:Token {id: 604, text: 'THE', pos: 'DET', position: 0}),
       (t605:Token {id: 605, text: 'PATIENT', pos: 'NOUN', position: 1}),
       (t606:Token {id: 606, text: 'THEN', pos: 'ADV', position: 2}),
       (t607:Token {id: 607, text: 'CODED', pos: 'NOUN', position: 3}),
       (t608:Token {id: 608, text: 'AND', pos: 'CCONJ', position: 4}),
       (t609:Token {id: 609, text: 'PASSED', pos: 'VERB', position: 5}),
       (t610:Token {id: 610, text: 'AWAY', pos: 'ADV', position: 6}),
       (t611:Token {id: 611, text: '.', pos: 'PUNCT', position: 7})
WITH [t604, t605, t606, t607, t608, t609, t610, t611] as nodes
// Create dependency relationships for sentence 36
MATCH (t1:Token {id: 604}), (t2:Token {id: 605}) WITH t1, t2 CREATE (t1)-[:det]->(t2);
MATCH (t1:Token {id: 605}), (t2:Token {id: 607}) WITH t1, t2 CREATE (t1)-[:nsubj]->(t2);
MATCH (t1:Token {id: 606}), (t2:Token {id: 607}) WITH t1, t2 CREATE (t1)-[:advmod]->(t2);
MATCH (t1:Token {id: 608}), (t2:Token {id: 607}) WITH t1, t2 CREATE (t1)-[:cc]->(t2);
MATCH (t1:Token {id: 609}), (t2:Token {id: 607}) WITH t1, t2 CREATE (t1)-[:conj]->(t2);
MATCH (t1:Token {id: 610}), (t2:Token {id: 609}) WITH t1, t2 CREATE (t1)-[:advmod]->(t2);
MATCH (t1:Token {id: 611}), (t2:Token {id: 607}) WITH t1, t2 CREATE (t1)-[:punct]->(t2);

// This is end of schema.
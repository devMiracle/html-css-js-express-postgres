-- Table: public.product

-- DROP TABLE public.product;

CREATE TABLE public.product
(
  id integer NOT NULL DEFAULT nextval('product_id_seq'::regclass),
  title character varying(25) NOT NULL,
  description character varying(255) NOT NULL,
  price money NOT NULL,
  quantity integer NOT NULL,
  CONSTRAINT pk_id_product PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.product
  OWNER TO remote_admin;

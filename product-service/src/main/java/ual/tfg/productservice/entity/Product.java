package ual.tfg.productservice.entity;


import jakarta.persistence.*;
import lombok.*;


@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "producto")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    @Column(name = "name")

    private String name;
    @Column(name = "price")

    private String price;
    @Column(name = "url")

    private String url;
    @Column(name = "categoria")
    private String categoria;

    public Product(String name, String price, String url, String categoria) {
        this.name = name;
        this.price = price;
        this.url = url;
        this.categoria = categoria;
    }
}

<?php


class Review
{
    public $id;
    public $user_id;
    public $name;
    public $date;
    public $stars;
    public $description;
    public $product_id;

    public function __construct()
    {
        settype($this->id, 'integer');
        settype($this->product_id, 'integer');
    }
}
DROP TABLE IF EXISTS completed_orders;
DROP TABLE IF EXISTS product_interest;
DROP TABLE IF EXISTS site_sessions;

CREATE TABLE site_sessions (
    session_id INT
);

INSERT INTO site_sessions (session_id)
VALUES
(101),(102),(103),(104),(105),
(106),(107),(108),(109),(110);

CREATE TABLE product_interest (
    session_id INT
);

INSERT INTO product_interest (session_id)
VALUES
(101),(102),(103),(104),(105),(105),(107);

CREATE TABLE completed_orders (
    session_id INT
);

INSERT INTO completed_orders (session_id)
VALUES
(101),(103),(105),(105);

SELECT
    ROUND(
        COUNT(DISTINCT pi.session_id) * 100.0 /
        COUNT(DISTINCT ss.session_id), 2
    ) AS interest_conversion,
    ROUND(
        COUNT(DISTINCT co.session_id) * 100.0 /
        COUNT(DISTINCT pi.session_id), 2
    ) AS order_conversion,
    ROUND(
        COUNT(DISTINCT co.session_id) * 100.0 /
        COUNT(DISTINCT ss.session_id), 2
    ) AS overall_conversion
FROM site_sessions ss
LEFT JOIN product_interest pi
    ON ss.session_id = pi.session_id
LEFT JOIN completed_orders co
    ON ss.session_id = co.session_id;

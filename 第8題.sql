-- �w�q�Ȥ���
CREATE TABLE �Ȥ��� (
    �Ȥ�N�� INT PRIMARY KEY,
    �m�W VARCHAR(50),
    �q�� VARCHAR(20),
    �ǯu VARCHAR(20)
);

-- �w�q�q����
CREATE TABLE �q���� (
    �q��N�� INT PRIMARY KEY,
    �q���� DATE,
    �Ȥ�N�� INT,
    FOREIGN KEY (�Ȥ�N��) REFERENCES �Ȥ���(�Ȥ�N��)
);

-- �w�q���~��
CREATE TABLE ���~�� (
    ���~�N�� INT PRIMARY KEY,
    �~�W VARCHAR(50),
    ��� DECIMAL(10, 2)
);

-- �w�q�q�����
CREATE TABLE �q����� (
    �q��N�� INT,
    ���~�N�� INT,
    �ƶq INT,
    PRIMARY KEY (�q��N��, ���~�N��),
    FOREIGN KEY (�q��N��) REFERENCES �q����(�q��N��),
    FOREIGN KEY (���~�N��) REFERENCES ���~��

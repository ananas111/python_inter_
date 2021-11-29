import unittest
import count_vowels


class CountVowelsTests(unittest.TestCase):
    def test_sum(self):
        txt = "12Eabcdefgh ij"
        result = count_vowels.get_res(txt)
        self.assertEqual(result, 4)

    def test_sum_0(self):
        txt = "bcdf"
        result = count_vowels.get_res(txt)
        self.assertEqual(result, 0)


if __name__ == '__main__':
    unittest.main()

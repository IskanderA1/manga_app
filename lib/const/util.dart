String clearHtmlTag(String text) {
  return text
      .replaceAll('<p>', '')
      .replaceAll('</p>', '')
      .replaceAll('<br>', '\n\t\t')
      .replaceAll('&laquo;', '"')
      .replaceAll('&raquo;', '"')
      .replaceAll('&mdash;', '—')
      .replaceAll('&nbsp;', ' ');
}

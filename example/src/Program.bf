using System;
using System.Collections;
using System.Diagnostics;
using System.IO;
using System.Interop;
using System.Text;

using static cmark.cmark;

namespace example;

static class Program
{
	static int Main(params String[] args)
	{
		let input = "Hello *world*";

		cmark_node* document = cmark_parse_document(input, (.)input.Length, CMARK_OPT_DEFAULT);
		defer cmark_node_free(document);

		c_char* xml = cmark_render_xml(document, CMARK_OPT_DEFAULT);
		defer Internal.StdFree(xml);

		Debug.WriteLine($"{StringView(xml)}");

		return 0;
	}
}
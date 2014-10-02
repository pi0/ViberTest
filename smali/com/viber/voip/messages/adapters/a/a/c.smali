.class public Lcom/viber/voip/messages/adapters/a/a/c;
.super Lcom/viber/voip/ui/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/viber/voip/messages/adapters/a/a;",
        ">",
        "Lcom/viber/voip/ui/b/a",
        "<TT;",
        "Lcom/viber/voip/messages/adapters/a/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/widget/TextView;

.field protected final b:Landroid/widget/TextView;

.field protected final c:Landroid/widget/TextView;

.field protected final d:Landroid/widget/TextView;

.field protected final e:Lcom/viber/voip/messages/h;

.field protected final f:Lcom/viber/voip/messages/ui/bb;

.field protected final g:Landroid/text/SpannableStringBuilder;


# direct methods
.method protected constructor <init>(Landroid/view/View;Lcom/viber/voip/messages/h;Lcom/viber/voip/messages/ui/bb;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/b/a;-><init>(Landroid/view/View;)V

    .line 50
    iput-object p2, p0, Lcom/viber/voip/messages/adapters/a/a/c;->e:Lcom/viber/voip/messages/h;

    .line 51
    iput-object p3, p0, Lcom/viber/voip/messages/adapters/a/a/c;->f:Lcom/viber/voip/messages/ui/bb;

    .line 52
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/c;->g:Landroid/text/SpannableStringBuilder;

    .line 54
    const v0, 0x7f0700e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/c;->a:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0700e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0703c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/c;->b:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/c;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/c;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    :cond_0
    const v0, 0x7f0700e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/c;->d:Landroid/widget/TextView;

    .line 61
    return-void
.end method

.method private a(ILcom/viber/voip/messages/adapters/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/adapters/a/b/a;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/viber/voip/messages/adapters/a/b/a;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 163
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/c;->e:Lcom/viber/voip/messages/h;

    invoke-interface {p2}, Lcom/viber/voip/messages/adapters/a/a;->t()I

    move-result v1

    invoke-virtual {v0, p1, p3, v1, v4}, Lcom/viber/voip/messages/h;->a(ILjava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v0, "animated_message"

    invoke-static {p1}, Lcom/viber/voip/messages/j;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, " "

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/c;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    if-eqz v2, :cond_1

    invoke-virtual {p5}, Lcom/viber/voip/messages/adapters/a/b/a;->c()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 169
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/c;->g:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz p6, :cond_2

    const v0, 0x7f0d0132

    :goto_2
    invoke-direct {v2, v5, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v1, v2, v0, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 171
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/c;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/c;->f:Lcom/viber/voip/messages/ui/bb;

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    sget v2, Lcom/viber/voip/messages/ui/bd;->d:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p5}, Lcom/viber/voip/messages/adapters/a/b/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IIZLjava/lang/String;)V

    .line 173
    return-void

    .line 165
    :cond_0
    const-string/jumbo v0, ": "

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 166
    goto :goto_1

    .line 169
    :cond_2
    const v0, 0x7f0d0133

    goto :goto_2
.end method

.method private a(Lcom/viber/voip/messages/adapters/a/a;Lcom/viber/voip/messages/adapters/a/b/a;ZZLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/viber/voip/messages/adapters/a/b/a;",
            "ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x14

    .line 176
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->n()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p2}, Lcom/viber/voip/messages/adapters/a/b/a;->f()I

    move-result v2

    .line 178
    invoke-virtual {p2}, Lcom/viber/voip/messages/adapters/a/b/a;->g()Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 180
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 182
    if-eqz v0, :cond_0

    const-string/jumbo v4, "text"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    .line 183
    :goto_0
    sget-object v4, Lcom/viber/voip/util/fq;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v4

    invoke-static {v4, v3, v1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    :cond_1
    iget-object v4, p0, Lcom/viber/voip/messages/adapters/a/a/c;->a:Landroid/widget/TextView;

    invoke-direct {p0, v4, v3, v5, v2}, Lcom/viber/voip/messages/adapters/a/a/c;->a(Landroid/widget/TextView;Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    .line 187
    iget-object v4, p0, Lcom/viber/voip/messages/adapters/a/a/c;->a:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1, v5, v2}, Lcom/viber/voip/messages/adapters/a/a/c;->a(Landroid/widget/TextView;Ljava/lang/String;II)Z

    .line 189
    :cond_2
    if-eqz p4, :cond_6

    .line 190
    iget-object v4, p0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    invoke-direct {p0, v4, v3, v5, v2}, Lcom/viber/voip/messages/adapters/a/a/c;->a(Landroid/widget/TextView;Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v1, :cond_3

    .line 191
    iget-object v4, p0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1, v5, v2}, Lcom/viber/voip/messages/adapters/a/a/c;->a(Landroid/widget/TextView;Ljava/lang/String;II)Z

    .line 194
    :cond_3
    if-eqz v0, :cond_4

    if-nez p3, :cond_4

    .line 195
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1b

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/viber/voip/messages/adapters/a/a/c;->a(Landroid/widget/TextView;Ljava/lang/String;II)Z

    .line 203
    :cond_4
    :goto_1
    return-void

    .line 182
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :cond_6
    if-eqz v0, :cond_4

    .line 199
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    const/16 v1, 0x3c

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/viber/voip/messages/adapters/a/a/c;->a(Landroid/widget/TextView;Ljava/lang/String;II)Z

    goto :goto_1
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;II)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 240
    :goto_0
    return v0

    .line 209
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 211
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    move v0, v2

    .line 212
    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v4, v1, v3

    .line 215
    if-le v4, p3, :cond_7

    .line 216
    div-int/lit8 v3, p3, 0x3

    sub-int v3, v1, v3

    .line 217
    sub-int v5, v4, v3

    if-le v5, p3, :cond_6

    .line 218
    sub-int/2addr v4, v3

    sub-int/2addr v4, p3

    .line 219
    add-int/2addr v3, v4

    .line 220
    if-le v3, v1, :cond_6

    .line 224
    :goto_1
    if-eqz v1, :cond_3

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-object v1, v0

    .line 230
    :goto_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_4

    .line 231
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 233
    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 234
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 235
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 236
    :goto_3
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 237
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v3, p4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-interface {v0, v3, v4, v5, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 239
    :cond_5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move-object v1, v0

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/adapters/a/a;Lcom/viber/voip/messages/adapters/a/b/a;)V
    .locals 21
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/viber/voip/messages/adapters/a/b/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-interface/range {p1 .. p1}, Lcom/viber/voip/messages/adapters/a/a;->e()Z

    move-result v13

    .line 68
    invoke-interface/range {p1 .. p1}, Lcom/viber/voip/messages/adapters/a/a;->l()Z

    move-result v14

    .line 69
    invoke-interface/range {p1 .. p1}, Lcom/viber/voip/messages/adapters/a/a;->d()Z

    move-result v15

    .line 70
    invoke-virtual/range {p2 .. p2}, Lcom/viber/voip/messages/adapters/a/b/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    move v4, v2

    .line 71
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/viber/voip/messages/adapters/a/a;->m()Z

    move-result v16

    .line 72
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/viber/voip/messages/adapters/a/a;->a()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/viber/voip/e/u;->f(J)Z

    move-result v5

    .line 73
    invoke-interface/range {p1 .. p1}, Lcom/viber/voip/messages/adapters/a/a;->A()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/viber/voip/messages/adapters/a/b/a;->k()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    move v3, v2

    .line 74
    :goto_1
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/viber/voip/messages/adapters/a/b;

    if-eqz v2, :cond_6

    move-object/from16 v2, p1

    check-cast v2, Lcom/viber/voip/messages/adapters/a/b;

    invoke-interface {v2}, Lcom/viber/voip/messages/adapters/a/b;->D()I

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_5

    const/4 v2, 0x1

    move v12, v2

    .line 76
    :goto_2
    if-eqz v15, :cond_0

    if-nez v3, :cond_0

    if-eqz v5, :cond_7

    :cond_0
    const/4 v8, 0x1

    .line 77
    :goto_3
    const/4 v11, 0x0

    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/viber/voip/messages/adapters/a/b/a;->g()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual/range {p2 .. p2}, Lcom/viber/voip/messages/adapters/a/b/a;->c()Ljava/lang/String;

    move-result-object v9

    .line 81
    invoke-interface/range {p1 .. p1}, Lcom/viber/voip/messages/adapters/a/a;->t()I

    move-result v5

    .line 82
    invoke-interface/range {p1 .. p1}, Lcom/viber/voip/messages/adapters/a/a;->i()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-interface/range {p1 .. p1}, Lcom/viber/voip/messages/adapters/a/a;->j()Ljava/lang/String;

    move-result-object v7

    .line 84
    invoke-interface/range {p1 .. p1}, Lcom/viber/voip/messages/adapters/a/a;->k()I

    move-result v17

    .line 85
    invoke-interface/range {p1 .. p1}, Lcom/viber/voip/messages/adapters/a/a;->n()Ljava/lang/String;

    move-result-object v6

    .line 87
    const-string/jumbo v10, ""

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/a/a/c;->g:Landroid/text/SpannableStringBuilder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 91
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0xb

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayerType()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 97
    :cond_1
    :goto_4
    if-eqz v13, :cond_13

    .line 98
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/adapters/a/a/c;->a:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/viber/voip/messages/adapters/a/b/a;->j()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    if-nez v17, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/viber/voip/messages/adapters/a/b/a;->i()Ljava/lang/String;

    move-result-object v6

    .line 100
    :goto_5
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/viber/voip/messages/adapters/a/b;

    if-eqz v2, :cond_a

    move-object/from16 v2, p1

    check-cast v2, Lcom/viber/voip/messages/adapters/a/b;

    invoke-interface {v2}, Lcom/viber/voip/messages/adapters/a/b;->K()Ljava/lang/String;

    move-result-object v5

    .line 101
    :goto_6
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/viber/voip/messages/adapters/a/b;

    if-eqz v2, :cond_b

    move-object/from16 v2, p1

    check-cast v2, Lcom/viber/voip/messages/adapters/a/b;

    invoke-interface {v2}, Lcom/viber/voip/messages/adapters/a/b;->J()I

    move-result v3

    .line 102
    :goto_7
    if-nez v14, :cond_10

    .line 105
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 106
    if-eqz v4, :cond_c

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/adapters/a/a/c;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 115
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/adapters/a/a/c;->g:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v8, :cond_d

    const v3, 0x7f0d0132

    :goto_9
    invoke-direct {v5, v6, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/adapters/a/a/c;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const/4 v3, 0x1

    :goto_a
    move-object v7, v2

    move v5, v3

    .line 155
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/adapters/a/a/c;->d:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/adapters/a/a/c;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v15, :cond_16

    const v2, 0x7f0900ba

    :goto_c
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/adapters/a/a/c;->d:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/adapters/a/a/c;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/viber/voip/messages/adapters/a/a;->r()J

    move-result-wide v8

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/viber/voip/messages/adapters/a/b/a;->p()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v8, v9, v4, v6}, Lcom/viber/voip/util/ak;->a(Landroid/content/Context;JZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v6, v13

    .line 158
    invoke-direct/range {v2 .. v7}, Lcom/viber/voip/messages/adapters/a/a/c;->a(Lcom/viber/voip/messages/adapters/a/a;Lcom/viber/voip/messages/adapters/a/b/a;ZZLjava/lang/String;)V

    .line 160
    return-void

    .line 70
    :cond_3
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_0

    .line 73
    :cond_4
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_1

    .line 74
    :cond_5
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_2

    :cond_6
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_2

    .line 76
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 93
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->isDrawingCacheEnabled()Z

    move-result v18

    if-nez v18, :cond_1

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_4

    :cond_9
    move-object v6, v7

    .line 99
    goto/16 :goto_5

    .line 100
    :cond_a
    const-string/jumbo v5, ""

    goto/16 :goto_6

    .line 101
    :cond_b
    const/4 v3, -0x1

    goto/16 :goto_7

    .line 111
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/adapters/a/a/c;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v2, v9

    goto/16 :goto_8

    .line 115
    :cond_d
    const v3, 0x7f0d0133

    goto/16 :goto_9

    .line 120
    :cond_e
    const-string/jumbo v6, ""

    .line 121
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/viber/voip/messages/adapters/a/b;

    if-eqz v2, :cond_f

    .line 122
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v4

    move-object/from16 v2, p1

    check-cast v2, Lcom/viber/voip/messages/adapters/a/b;

    invoke-interface {v2}, Lcom/viber/voip/messages/adapters/a/b;->L()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p1

    check-cast v2, Lcom/viber/voip/messages/adapters/a/b;

    invoke-interface {v2}, Lcom/viber/voip/messages/adapters/a/b;->D()I

    move-result v2

    invoke-interface {v4, v6, v2}, Lcom/viber/voip/messages/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 123
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/adapters/a/a/c;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0c0370

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_f
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    .line 127
    invoke-direct/range {v2 .. v8}, Lcom/viber/voip/messages/adapters/a/a/c;->a(ILcom/viber/voip/messages/adapters/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/adapters/a/b/a;Z)V

    move-object v2, v10

    move v3, v11

    .line 128
    goto/16 :goto_a

    .line 129
    :cond_10
    if-eqz v16, :cond_12

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/adapters/a/a/c;->e:Lcom/viber/voip/messages/h;

    invoke-interface/range {p1 .. p1}, Lcom/viber/voip/messages/adapters/a/a;->o()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v2, v3, v7, v0, v12}, Lcom/viber/voip/messages/h;->a(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/text/Spanned;

    .line 131
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/adapters/a/a/c;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/adapters/a/a/c;->g:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v8, :cond_11

    const v2, 0x7f0d0132

    :goto_d
    invoke-direct {v5, v6, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/adapters/a/a/c;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v3

    move v3, v11

    .line 138
    goto/16 :goto_a

    .line 135
    :cond_11
    const v2, 0x7f0d0133

    goto :goto_d

    .line 139
    :cond_12
    invoke-interface/range {p1 .. p1}, Lcom/viber/voip/messages/adapters/a/a;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;)I

    move-result v3

    invoke-interface/range {p1 .. p1}, Lcom/viber/voip/messages/adapters/a/a;->o()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/viber/voip/messages/adapters/a/a/c;->a(ILcom/viber/voip/messages/adapters/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/adapters/a/b/a;Z)V

    move-object v2, v10

    move v3, v11

    goto/16 :goto_a

    .line 142
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/adapters/a/a/c;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    if-eqz v14, :cond_15

    .line 146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/adapters/a/a/c;->g:Landroid/text/SpannableStringBuilder;

    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v8, :cond_14

    const v2, 0x7f0d0132

    :goto_e
    invoke-direct {v7, v9, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v4, v7, v2, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/adapters/a/a/c;->e:Lcom/viber/voip/messages/h;

    invoke-interface/range {p1 .. p1}, Lcom/viber/voip/messages/adapters/a/a;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v5, v13}, Lcom/viber/voip/messages/h;->b(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/adapters/a/a/c;->f:Lcom/viber/voip/messages/ui/bb;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    sget v5, Lcom/viber/voip/messages/ui/bd;->d:I

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IZLjava/lang/String;)V

    move-object v7, v10

    move v5, v11

    goto/16 :goto_b

    .line 146
    :cond_14
    const v2, 0x7f0d0133

    goto :goto_e

    .line 151
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/adapters/a/a/c;->c:Landroid/widget/TextView;

    const v3, 0x7f0c0458

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    move-object v7, v10

    move v5, v11

    goto/16 :goto_b

    .line 155
    :cond_16
    const v2, 0x7f0900c2

    goto/16 :goto_c
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    check-cast p1, Lcom/viber/voip/messages/adapters/a/a;

    check-cast p2, Lcom/viber/voip/messages/adapters/a/b/a;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/adapters/a/a/c;->a(Lcom/viber/voip/messages/adapters/a/a;Lcom/viber/voip/messages/adapters/a/b/a;)V

    return-void
.end method

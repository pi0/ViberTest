.class public Lcom/viber/voip/messages/ui/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field final b:I

.field final c:I

.field private e:Landroid/content/Context;

.field private f:Lcom/viber/voip/messages/ui/bd;

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/viber/voip/messages/ui/bb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/messages/ui/bb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|([\ue001-\ue537])|("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/messages/ui/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")|(\\([0-9a-zA-Z_\\!\\$\\?]+?\\))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/bb;->d:Ljava/util/regex/Pattern;

    .line 67
    const-string/jumbo v0, "[\u07b2-\u0807]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/bb;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/bb;->g:Z

    .line 78
    iput-object p1, p0, Lcom/viber/voip/messages/ui/bb;->e:Landroid/content/Context;

    .line 79
    invoke-static {}, Lcom/viber/voip/messages/ui/bd;->a()Lcom/viber/voip/messages/ui/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/bb;->f:Lcom/viber/voip/messages/ui/bd;

    .line 81
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bb;->e:Landroid/content/Context;

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/bb;->b:I

    .line 82
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bb;->e:Landroid/content/Context;

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/bb;->c:I

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/bb;-><init>(Landroid/content/Context;)V

    .line 87
    iput-boolean p2, p0, Lcom/viber/voip/messages/ui/bb;->g:Z

    .line 88
    return-void
.end method

.method private a(Lcom/viber/voip/messages/ui/bf;IZ)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 318
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bb;->f:Lcom/viber/voip/messages/ui/bd;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/bd;->a(Lcom/viber/voip/messages/ui/bf;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 321
    if-eqz p3, :cond_0

    .line 322
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 324
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 325
    iget-object v4, p0, Lcom/viber/voip/messages/ui/bb;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 326
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 331
    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/bb;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 332
    invoke-virtual {v1, v3, v3, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 334
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Lcom/viber/voip/messages/ui/bb;->b:I

    iget v4, p0, Lcom/viber/voip/messages/ui/bb;->c:I

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 335
    iget v1, p0, Lcom/viber/voip/messages/ui/bb;->b:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/viber/voip/messages/ui/bb;->c:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v3, v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 336
    return-object v0

    :cond_0
    move-object v0, v1

    .line 328
    goto :goto_0
.end method

.method private static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    new-instance v0, Ljava/lang/String;

    const v1, 0x1f300

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 31
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6ff

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    return-object v0
.end method

.method private a(Landroid/text/Spannable;ILcom/viber/voip/messages/ui/bf;IIZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 302
    invoke-direct {p0, p3, p2, p7}, Lcom/viber/voip/messages/ui/bb;->a(Lcom/viber/voip/messages/ui/bf;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 304
    if-eqz p6, :cond_1

    .line 305
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/bb;->h:Z

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Lcom/viber/voip/messages/ui/bc;

    iget-boolean v2, p0, Lcom/viber/voip/messages/ui/bb;->h:Z

    invoke-direct {v0, v1, v3, v2}, Lcom/viber/voip/messages/ui/bc;-><init>(Landroid/graphics/drawable/Drawable;IZ)V

    .line 313
    :goto_0
    const/16 v1, 0x21

    invoke-interface {p1, v0, p4, p5, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 314
    return-void

    .line 308
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/ui/bc;

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/messages/ui/bc;-><init>(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 311
    :cond_1
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, v1, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x2615

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 40
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2764

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/viber/voip/messages/ui/bd;->a()Lcom/viber/voip/messages/ui/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/bd;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 54
    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {}, Lcom/viber/voip/messages/ui/bd;->a()Lcom/viber/voip/messages/ui/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/bd;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    const-string/jumbo v3, "(^|\\s)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string/jumbo v0, "(?!\\S)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/16 v0, 0x7c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/TextView;IIIZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0x29

    const/16 v7, 0x28

    .line 114
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 116
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    sub-int v0, p4, p3

    .line 119
    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_b

    move-object v0, v1

    .line 120
    check-cast v0, Landroid/text/Spannable;

    .line 125
    add-int/lit8 v3, p3, -0x1

    .line 126
    if-ltz v3, :cond_a

    .line 127
    iget-object v2, p0, Lcom/viber/voip/messages/ui/bb;->f:Lcom/viber/voip/messages/ui/bd;

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/bd;->c()I

    move-result v2

    sub-int v2, p3, v2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 128
    :goto_1
    if-le v3, v2, :cond_2

    .line 129
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 130
    if-eq v4, v7, :cond_2

    if-ne v4, v8, :cond_5

    .line 133
    :cond_2
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_a

    .line 142
    :goto_2
    if-lez p4, :cond_9

    .line 143
    iget-object v2, p0, Lcom/viber/voip/messages/ui/bb;->f:Lcom/viber/voip/messages/ui/bd;

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/bd;->c()I

    move-result v2

    add-int/2addr v2, p4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    move v2, p4

    .line 144
    :goto_3
    if-ge v2, v4, :cond_3

    .line 145
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 146
    if-eq v6, v7, :cond_3

    if-ne v6, v8, :cond_6

    .line 149
    :cond_3
    if-gt v2, v4, :cond_9

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_9

    .line 151
    add-int/lit8 p4, v2, 0x1

    move v4, p4

    .line 155
    :goto_4
    sub-int v2, v4, v3

    .line 159
    if-lez v2, :cond_0

    .line 160
    const-class v1, Landroid/text/style/ImageSpan;

    invoke-interface {v0, v3, v4, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ImageSpan;

    .line 161
    array-length v6, v1

    :goto_5
    if-ge v5, v6, :cond_7

    aget-object v7, v1, v5

    .line 162
    invoke-interface {v0, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-le v8, v3, :cond_4

    invoke-interface {v0, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ge v8, v4, :cond_4

    .line 163
    invoke-interface {v0, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 161
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 131
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 132
    goto :goto_1

    .line 147
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 148
    goto :goto_3

    :cond_7
    move v0, v2

    .line 167
    :goto_6
    if-lez v0, :cond_0

    .line 168
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/bb;->g:Z

    if-eqz v0, :cond_8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p5

    .line 169
    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/ui/bb;->b(Landroid/widget/TextView;IIIZ)V

    goto/16 :goto_0

    :cond_8
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p5

    .line 171
    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/ui/bb;->c(Landroid/widget/TextView;IIIZ)V

    goto/16 :goto_0

    :cond_9
    move v4, p4

    goto :goto_4

    :cond_a
    move v3, p3

    goto :goto_2

    :cond_b
    move v4, p4

    move v3, p3

    goto :goto_6
.end method

.method public a(Landroid/widget/TextView;IIIZLjava/lang/String;)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 216
    const/4 v3, 0x0

    .line 217
    instance-of v2, v4, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    move-object v2, v4

    .line 218
    check-cast v2, Landroid/text/Spannable;

    move v10, v3

    move-object v3, v2

    .line 224
    :goto_0
    const/4 v5, 0x0

    .line 226
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-array v13, v2, [Z

    .line 227
    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 228
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 229
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-interface {v4, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    move v2, v5

    .line 230
    :cond_0
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 231
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    :goto_2
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 232
    const/4 v2, 0x1

    aput-boolean v2, v13, v4

    .line 233
    const/4 v5, 0x1

    .line 231
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    goto :goto_2

    .line 220
    :cond_1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 221
    const/4 v2, 0x1

    move v10, v2

    goto :goto_0

    .line 227
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v11, v2

    .line 238
    :goto_3
    sget-object v2, Lcom/viber/voip/messages/ui/bb;->d:Ljava/util/regex/Pattern;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-interface {v4, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 239
    const/4 v2, 0x0

    .line 241
    :cond_4
    :goto_4
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 242
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 245
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 247
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 248
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 253
    :goto_5
    iget-object v5, p0, Lcom/viber/voip/messages/ui/bb;->f:Lcom/viber/voip/messages/ui/bd;

    invoke-virtual {v5, v4}, Lcom/viber/voip/messages/ui/bd;->a(I)Lcom/viber/voip/messages/ui/bf;

    move-result-object v5

    .line 254
    if-nez v5, :cond_6

    .line 256
    iget-object v4, p0, Lcom/viber/voip/messages/ui/bb;->f:Lcom/viber/voip/messages/ui/bd;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/viber/voip/messages/ui/bd;->c(Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v5

    .line 258
    :cond_6
    if-eqz v5, :cond_4

    .line 259
    const/4 v12, 0x1

    .line 260
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    add-int v6, p3, v2

    .line 261
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    add-int v7, p3, v2

    .line 263
    const/4 v9, 0x0

    .line 264
    if-eqz v11, :cond_8

    move v2, v6

    .line 265
    :goto_6
    if-ge v2, v7, :cond_8

    if-nez v9, :cond_8

    .line 266
    aget-boolean v9, v13, v2

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 250
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    goto :goto_5

    :cond_8
    move-object v2, p0

    move/from16 v4, p2

    move/from16 v8, p5

    .line 270
    invoke-direct/range {v2 .. v9}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/text/Spannable;ILcom/viber/voip/messages/ui/bf;IIZZ)V

    move v2, v12

    goto :goto_4

    .line 273
    :cond_9
    iget-object v4, p0, Lcom/viber/voip/messages/ui/bb;->f:Lcom/viber/voip/messages/ui/bd;

    invoke-virtual {v4, v6}, Lcom/viber/voip/messages/ui/bd;->a(Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v5

    .line 274
    if-nez v5, :cond_a

    .line 276
    iget-object v4, p0, Lcom/viber/voip/messages/ui/bb;->f:Lcom/viber/voip/messages/ui/bd;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/viber/voip/messages/ui/bd;->c(Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v5

    .line 278
    :cond_a
    if-eqz v5, :cond_4

    .line 279
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    add-int v6, p3, v2

    .line 280
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    add-int v7, p3, v2

    .line 282
    const/4 v9, 0x0

    .line 283
    if-eqz v11, :cond_b

    move v2, v6

    .line 284
    :goto_7
    if-ge v2, v7, :cond_b

    if-nez v9, :cond_b

    .line 285
    aget-boolean v9, v13, v2

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    move-object v2, p0

    move/from16 v4, p2

    move/from16 v8, p5

    .line 289
    invoke-direct/range {v2 .. v9}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/text/Spannable;ILcom/viber/voip/messages/ui/bf;IIZZ)V

    .line 290
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 294
    :cond_c
    if-eqz v10, :cond_d

    if-eqz v2, :cond_d

    .line 295
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_d
    return-void

    :cond_e
    move v11, v5

    goto/16 :goto_3
.end method

.method public a(Landroid/widget/TextView;IIZLjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IIIZLjava/lang/String;)V

    .line 105
    return-void
.end method

.method public a(Landroid/widget/TextView;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IZLjava/lang/String;)V

    .line 96
    return-void
.end method

.method public a(Landroid/widget/TextView;IZLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IIZLjava/lang/String;)V

    .line 100
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/bb;->h:Z

    .line 341
    return-void
.end method

.method public b(Landroid/widget/TextView;IIIZ)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 180
    const/4 v1, 0x0

    .line 181
    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    .line 182
    check-cast v0, Landroid/text/Spannable;

    move v8, v1

    move-object v1, v0

    .line 188
    :goto_0
    sget-object v0, Lcom/viber/voip/messages/ui/bb;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 189
    const/4 v0, 0x0

    .line 191
    :cond_0
    :goto_1
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 193
    iget-object v3, p0, Lcom/viber/voip/messages/ui/bb;->f:Lcom/viber/voip/messages/ui/bd;

    invoke-virtual {v3, v2}, Lcom/viber/voip/messages/ui/bd;->b(Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v3

    .line 194
    if-eqz v2, :cond_0

    .line 195
    const/4 v9, 0x1

    .line 196
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    add-int v4, p3, v0

    .line 197
    add-int/lit8 v5, v4, 0x1

    .line 198
    const/4 v7, 0x0

    move-object v0, p0

    move v2, p2

    move/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/text/Spannable;ILcom/viber/voip/messages/ui/bf;IIZZ)V

    move v0, v9

    goto :goto_1

    .line 184
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 185
    const/4 v0, 0x1

    move v8, v0

    goto :goto_0

    .line 201
    :cond_2
    if-eqz v8, :cond_3

    if-eqz v0, :cond_3

    .line 202
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_3
    return-void
.end method

.method public c(Landroid/widget/TextView;IIIZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IIIZLjava/lang/String;)V

    .line 209
    return-void
.end method

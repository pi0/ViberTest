.class public Lcom/viber/voip/util/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/l;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "heb"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "ara"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/m;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resources must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/viber/voip/util/m;->b:Landroid/content/res/Resources;

    .line 48
    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/viber/voip/util/n;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 537
    const/4 v0, 0x0

    .line 538
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 539
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 540
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v1, v0, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 541
    new-instance v0, Lcom/viber/voip/util/n;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/util/n;-><init>(II)V

    .line 543
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x200e

    const/4 v1, 0x0

    .line 561
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 563
    :goto_0
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 564
    invoke-virtual {v2, v0}, Landroid/text/SpannableString;->charAt(I)C

    move-result v3

    .line 565
    if-eq v3, v6, :cond_0

    if-ne v3, v6, :cond_1

    .line 566
    :cond_0
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 567
    add-int/lit8 v4, v0, 0x1

    const/16 v5, 0x12

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 563
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    :cond_2
    return-object v2
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/util/m;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c03c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-direct {p0, v0}, Lcom/viber/voip/util/m;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 87
    return-object v0
.end method

.method public a(ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 257
    if-nez p2, :cond_0

    .line 258
    const-string/jumbo p2, ""

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/m;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c0132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/viber/voip/util/m;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/m;->b:Landroid/content/res/Resources;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 310
    if-nez p2, :cond_0

    .line 311
    const-string/jumbo p2, ""

    .line 313
    :cond_0
    if-nez p3, :cond_1

    .line 314
    const-string/jumbo p3, ""

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/util/m;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c0132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/viber/voip/util/m;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcom/viber/voip/util/m;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c02be

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/viber/voip/util/m;->b:Landroid/content/res/Resources;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 354
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x200e

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-direct {p0, v0}, Lcom/viber/voip/util/m;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 60
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    const-string/jumbo p1, ""

    .line 196
    :cond_0
    if-nez p2, :cond_1

    .line 197
    const-string/jumbo p2, ""

    .line 200
    :cond_1
    if-nez p3, :cond_2

    .line 201
    const-string/jumbo p3, ""

    .line 204
    :cond_2
    const-string/jumbo v0, ""

    .line 248
    iget-object v0, p0, Lcom/viber/voip/util/m;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c02be

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    return-object v0
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x4

    .line 457
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 460
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v4

    .line 461
    :goto_1
    if-ge v3, v1, :cond_2

    .line 462
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    add-int/lit8 v0, v1, -0x1

    if-eq v3, v0, :cond_0

    .line 464
    const-string/jumbo v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v1, v2

    .line 457
    goto :goto_0

    .line 468
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 469
    iget-object v0, p0, Lcom/viber/voip/util/m;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c02cc

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/viber/voip/util/m;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x200e

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/m;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x200e

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/viber/voip/util/m;->b:Landroid/content/res/Resources;

    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0464

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-direct {p0, v0}, Lcom/viber/voip/util/m;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 73
    return-object v0

    .line 71
    :cond_0
    const v0, 0x7f0c0463

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    const-string/jumbo p1, ""

    .line 95
    :cond_0
    if-nez p2, :cond_1

    .line 96
    const-string/jumbo p2, ""

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/util/m;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c02bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    const-string/jumbo v0, "${user}"

    invoke-direct {p0, v1, v0, p1}, Lcom/viber/voip/util/m;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/viber/voip/util/n;

    .line 134
    const-string/jumbo v0, "${group}"

    invoke-direct {p0, v1, v0, p2}, Lcom/viber/voip/util/m;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/viber/voip/util/n;

    .line 135
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    const-string/jumbo p1, ""

    .line 146
    :cond_0
    if-nez p2, :cond_1

    .line 147
    const-string/jumbo p2, ""

    .line 150
    :cond_1
    const-string/jumbo v0, ""

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 397
    if-nez p1, :cond_0

    .line 398
    const-string/jumbo p1, ""

    .line 401
    :cond_0
    if-nez p2, :cond_1

    .line 402
    const-string/jumbo p2, ""

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/util/m;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c0132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/viber/voip/util/m;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/viber/voip/util/m;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c02ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 436
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 437
    const-string/jumbo v0, "${user}"

    invoke-direct {p0, v1, v0, p1}, Lcom/viber/voip/util/m;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/viber/voip/util/n;

    .line 438
    const-string/jumbo v0, "${group}"

    invoke-direct {p0, v1, v0, p2}, Lcom/viber/voip/util/m;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/viber/voip/util/n;

    .line 439
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 300
    invoke-static {p2}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 447
    iget-object v0, p0, Lcom/viber/voip/util/m;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c02cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 449
    const-string/jumbo v0, "${count}"

    invoke-direct {p0, v1, v0, p1}, Lcom/viber/voip/util/m;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/viber/voip/util/n;

    .line 450
    const-string/jumbo v0, "${group}"

    invoke-direct {p0, v1, v0, p2}, Lcom/viber/voip/util/m;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/viber/voip/util/n;

    .line 451
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

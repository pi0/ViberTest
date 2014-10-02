.class public Lcom/viber/voip/util/upload/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string/jumbo v0, "--xxxxxxxxxxxxx\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "Content-Disposition: form-data; name=\"%s\";"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v0, v1

    const-string/jumbo v1, "\n\n"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "\n--xxxxxxxxxxxxx--\n"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/viber/voip/util/upload/j;->a:I

    .line 49
    sget v0, Lcom/viber/voip/util/upload/j;->a:I

    const-string/jumbo v1, " filename=\"filename\""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/viber/voip/util/upload/j;->b:I

    .line 89
    const-string/jumbo v0, "^bytes ([0-9]+)-(([0-9]+)/([0-9]+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/upload/j;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/viber/voip/util/upload/k;
    .locals 5
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v4, 0x3

    .line 91
    sget-object v1, Lcom/viber/voip/util/upload/j;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 96
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 98
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 100
    :goto_0
    new-instance v2, Lcom/viber/voip/util/upload/k;

    invoke-direct {v2, v3, v1, v0}, Lcom/viber/voip/util/upload/k;-><init>(III)V

    move-object v0, v2

    .line 102
    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

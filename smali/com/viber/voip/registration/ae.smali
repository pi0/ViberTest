.class final Lcom/viber/voip/registration/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/viber/voip/registration/ae;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/registration/ae;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-boolean v0, Lcom/viber/voip/registration/ae;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 40
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 41
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 43
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 45
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 49
    const-string/jumbo v0, "ActivateUserRequest"

    invoke-interface {v2, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    if-nez p0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v4, v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const-string/jumbo v0, "8"

    aput-object v0, v4, v8

    aput-object p2, v4, v9

    const/4 v0, 0x4

    invoke-static {}, Lcom/viber/voip/w;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 56
    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v0, "UDID"

    aput-object v0, v5, v1

    const-string/jumbo v0, "ActivationCode"

    aput-object v0, v5, v6

    const-string/jumbo v0, "ProtocolVersion"

    aput-object v0, v5, v8

    const-string/jumbo v0, "Language"

    aput-object v0, v5, v9

    const/4 v0, 0x4

    const-string/jumbo v6, "System"

    aput-object v6, v5, v0

    move v0, v1

    .line 60
    :goto_1
    array-length v1, v4

    if-ge v0, v1, :cond_2

    .line 61
    aget-object v1, v4, v0

    if-eqz v1, :cond_0

    .line 62
    aget-object v1, v5, v0

    invoke-interface {v2, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    aget-object v1, v4, v0

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    aget-object v1, v5, v0

    invoke-interface {v2, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_2
    const-string/jumbo v0, "ActivateUserRequest"

    invoke-interface {v2, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 71
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    return-object v0
.end method

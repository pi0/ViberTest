.class public Lcom/viber/voip/billing/bt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic d:Z

.field private static e:Ljava/util/regex/Pattern;


# instance fields
.field a:Lcom/viber/voip/billing/bp;

.field b:I

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/viber/voip/billing/bt;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/billing/bt;->d:Z

    .line 13
    const-string/jumbo v0, "^([a-zA-Z_]+)\\.([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/billing/bt;->e:Ljava/util/regex/Pattern;

    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/viber/voip/billing/bp;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-boolean v0, Lcom/viber/voip/billing/bt;->d:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/viber/voip/billing/bt;->a:Lcom/viber/voip/billing/bp;

    .line 48
    iput p2, p0, Lcom/viber/voip/billing/bt;->b:I

    .line 49
    iput-object p3, p0, Lcom/viber/voip/billing/bt;->c:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static a(I)Lcom/viber/voip/billing/bt;
    .locals 4
    .parameter

    .prologue
    .line 37
    new-instance v0, Lcom/viber/voip/billing/bt;

    sget-object v1, Lcom/viber/voip/billing/bp;->b:Lcom/viber/voip/billing/bp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stickers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/viber/voip/billing/bt;-><init>(Lcom/viber/voip/billing/bp;ILjava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/viber/voip/billing/bt;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 20
    sget-object v0, Lcom/viber/voip/billing/bt;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 24
    const-string/jumbo v2, "stickers"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    sget-object v1, Lcom/viber/voip/billing/bp;->b:Lcom/viber/voip/billing/bp;

    .line 29
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 30
    new-instance v0, Lcom/viber/voip/billing/bt;

    invoke-direct {v0, v1, v2, p0}, Lcom/viber/voip/billing/bt;-><init>(Lcom/viber/voip/billing/bp;ILjava/lang/String;)V

    .line 32
    :goto_0
    return-object v0

    .line 27
    :cond_0
    new-instance v0, Lcom/viber/voip/billing/bt;

    sget-object v1, Lcom/viber/voip/billing/bp;->c:Lcom/viber/voip/billing/bp;

    invoke-direct {v0, v1, v3, p0}, Lcom/viber/voip/billing/bt;-><init>(Lcom/viber/voip/billing/bp;ILjava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/viber/voip/billing/bt;

    sget-object v1, Lcom/viber/voip/billing/bp;->c:Lcom/viber/voip/billing/bp;

    invoke-direct {v0, v1, v3, p0}, Lcom/viber/voip/billing/bt;-><init>(Lcom/viber/voip/billing/bp;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/viber/voip/billing/bt;
    .locals 3
    .parameter

    .prologue
    .line 41
    new-instance v0, Lcom/viber/voip/billing/bt;

    sget-object v1, Lcom/viber/voip/billing/bp;->a:Lcom/viber/voip/billing/bp;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/viber/voip/billing/bt;-><init>(Lcom/viber/voip/billing/bp;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/viber/voip/billing/bp;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/billing/bt;->a:Lcom/viber/voip/billing/bp;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/viber/voip/billing/bt;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 62
    instance-of v0, p1, Lcom/viber/voip/billing/bt;

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/bt;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/viber/voip/billing/bt;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/viber/voip/billing/bt;->c:Ljava/lang/String;

    return-object v0
.end method

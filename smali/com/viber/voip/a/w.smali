.class public Lcom/viber/voip/a/w;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# instance fields
.field private final a:Lcom/viber/voip/a/x;

.field private final b:Lcom/viber/voip/a/x;

.field private final c:Lcom/viber/voip/a/x;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 107
    const-string/jumbo v0, "Enter_details"

    invoke-direct {p0, v0, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 110
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Activation"

    const-string/jumbo v2, "Get_facebook_Details"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/w;->a:Lcom/viber/voip/a/x;

    .line 111
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Activation"

    const-string/jumbo v2, "Select_existing_photo"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/w;->b:Lcom/viber/voip/a/x;

    .line 112
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Activation"

    const-string/jumbo v2, "Take_photo"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/w;->c:Lcom/viber/voip/a/x;

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/viber/voip/a/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 127
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Activation"

    const-string/jumbo v2, "Continue"

    move-object v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method

.method public final c()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/viber/voip/a/w;->a:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final d()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/viber/voip/a/w;->b:Lcom/viber/voip/a/x;

    return-object v0
.end method

.method public final e()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/viber/voip/a/w;->c:Lcom/viber/voip/a/x;

    return-object v0
.end method

.class Lcom/viber/voip/registration/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/registration/bp;


# instance fields
.field private final a:Lcom/viber/voip/registration/bj;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/registration/CountryCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/viber/voip/registration/bj;)V
    .locals 2
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/registration/av;->b:Ljava/util/List;

    .line 177
    iput-object p1, p0, Lcom/viber/voip/registration/av;->a:Lcom/viber/voip/registration/bj;

    .line 178
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/registration/av;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/viber/voip/registration/av;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/viber/voip/registration/av;->a:Lcom/viber/voip/registration/bj;

    invoke-interface {v0, p3}, Lcom/viber/voip/registration/bj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/viber/voip/registration/av;->b:Ljava/util/List;

    new-instance v2, Lcom/viber/voip/registration/CountryCode;

    invoke-direct {v2, p1, p2, v0, p4}, Lcom/viber/voip/registration/CountryCode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

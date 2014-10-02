.class public Lcom/viber/voip/a/ba;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# instance fields
.field public final a:Lcom/viber/voip/a/c;

.field private final b:Lcom/viber/voip/a/x;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1229
    const-string/jumbo v0, "You_screen"

    invoke-direct {p0, v0, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 1232
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "About"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/ba;->a:Lcom/viber/voip/a/c;

    .line 1234
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Contacts"

    const-string/jumbo v2, "Send_mail"

    const-string/jumbo v3, ""

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    iput-object v0, p0, Lcom/viber/voip/a/ba;->b:Lcom/viber/voip/a/x;

    .line 1230
    return-void
.end method


# virtual methods
.method public final c()Lcom/viber/voip/a/x;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/viber/voip/a/ba;->b:Lcom/viber/voip/a/x;

    return-object v0
.end method

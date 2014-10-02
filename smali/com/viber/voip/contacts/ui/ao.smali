.class Lcom/viber/voip/contacts/ui/ao;
.super Lcom/viber/voip/contacts/b/b/a/e;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/viber/voip/contacts/ui/al;

.field private final c:Lcom/viber/voip/contacts/b/i;


# direct methods
.method public constructor <init>(Lcom/viber/voip/contacts/ui/al;Lcom/viber/voip/contacts/b/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ao;->b:Lcom/viber/voip/contacts/ui/al;

    invoke-direct {p0}, Lcom/viber/voip/contacts/b/b/a/e;-><init>()V

    .line 298
    iput-object p2, p0, Lcom/viber/voip/contacts/ui/ao;->c:Lcom/viber/voip/contacts/b/i;

    .line 299
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    const-string/jumbo v0, "vnd.android.cursor.item/phone_v2"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ao;->c:Lcom/viber/voip/contacts/b/i;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

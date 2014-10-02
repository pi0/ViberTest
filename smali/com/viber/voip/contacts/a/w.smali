.class Lcom/viber/voip/contacts/a/w;
.super Lcom/viber/voip/contacts/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/contacts/a/c",
        "<",
        "Lcom/viber/voip/contacts/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/a/v;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/a/v;Lcom/viber/provider/a;Ljava/lang/CharSequence;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/viber/voip/contacts/a/w;->a:Lcom/viber/voip/contacts/a/v;

    invoke-direct {p0, p2, p3, p4}, Lcom/viber/voip/contacts/a/c;-><init>(Lcom/viber/provider/a;Ljava/lang/CharSequence;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/viber/voip/contacts/b/e;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/viber/voip/messages/orm/entity/Entity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    check-cast p1, Lcom/viber/voip/contacts/b/e;

    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/a/w;->a(Lcom/viber/voip/contacts/b/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

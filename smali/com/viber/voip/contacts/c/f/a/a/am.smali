.class Lcom/viber/voip/contacts/c/f/a/a/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/f/a/a/ak;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/a/a/al;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/al;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/am;->a:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 95
    if-nez p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/am;->a:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-static {v0, v3}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/al;Z)Z

    .line 97
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/a/a/am;->a:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-static {v2}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/al;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/am;->a:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-virtual {v0, v3}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Z)V

    .line 100
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/am;->a:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Lcom/viber/voip/settings/m;)V

    .line 101
    return-void
.end method

.class Lcom/viber/voip/contacts/c/d/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/ar;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/m;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/u;->a:Lcom/viber/voip/contacts/c/d/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/u;->a:Lcom/viber/voip/contacts/c/d/m;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/m;->c:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 154
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/u;->a:Lcom/viber/voip/contacts/c/d/m;

    iget-object v1, v1, Lcom/viber/voip/contacts/c/d/m;->g:Lcom/viber/voip/contacts/a/a;

    invoke-virtual {v1, p1, v0}, Lcom/viber/voip/contacts/a/a;->a(Ljava/util/Collection;Ljava/util/Locale;)V

    .line 156
    return-void
.end method

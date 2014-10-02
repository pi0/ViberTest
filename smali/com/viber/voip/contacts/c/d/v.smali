.class Lcom/viber/voip/contacts/c/d/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/ap;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/viber/voip/contacts/c/d/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/m;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/v;->b:Lcom/viber/voip/contacts/c/d/m;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/v;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/v;->a:Ljava/util/Map;

    new-instance v1, Lcom/viber/voip/contacts/c/d/w;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/c/d/w;-><init>(Lcom/viber/voip/contacts/c/d/v;)V

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/a;->a(Ljava/util/Map;Lcom/viber/voip/contacts/c/u;)V

    .line 245
    return-void
.end method

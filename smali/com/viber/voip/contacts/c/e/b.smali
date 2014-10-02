.class public Lcom/viber/voip/contacts/c/e/b;
.super Lcom/viber/voip/util/fe;
.source "SourceFile"


# static fields
.field private static c:Lcom/viber/voip/contacts/c/e/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/dk;->c:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/util/fe;-><init>(Landroid/content/ContentResolver;Landroid/os/Handler;)V

    .line 14
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/viber/voip/contacts/c/e/b;
    .locals 1
    .parameter

    .prologue
    .line 17
    sget-object v0, Lcom/viber/voip/contacts/c/e/b;->c:Lcom/viber/voip/contacts/c/e/b;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/viber/voip/contacts/c/e/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/c/e/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/viber/voip/contacts/c/e/b;->c:Lcom/viber/voip/contacts/c/e/b;

    .line 20
    :cond_0
    sget-object v0, Lcom/viber/voip/contacts/c/e/b;->c:Lcom/viber/voip/contacts/c/e/b;

    return-object v0
.end method

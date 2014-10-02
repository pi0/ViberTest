.class public final Lcom/viber/provider/contacts/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-string/jumbo v0, "content://com.viber.provider.vibercontacts/phonebookrawcontact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/contacts/e;->a:Landroid/net/Uri;

    return-void
.end method

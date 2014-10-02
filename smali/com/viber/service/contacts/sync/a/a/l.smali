.class public Lcom/viber/service/contacts/sync/a/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/service/contacts/sync/a/a/l;->a:J

    .line 599
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/service/contacts/sync/a/a/l;->b:J

    .line 600
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/service/contacts/sync/a/a/l;->c:J

    .line 601
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/viber/service/contacts/sync/a/a/l;->d:I

    .line 602
    return-void
.end method
